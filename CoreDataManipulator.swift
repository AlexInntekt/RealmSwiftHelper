//
//  CoreDataManipulators.swift
//  k
//
//  Created by Manolescu Mihai Alexandru on 25/11/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class CDManipulator
{
//    class declaration for coredata:
//    class:  StoredKey
//    attribute: binaryData
    
    //MARK: Write
    func setKey(_ keyToStore: Data)
    {
        clean()
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let aKeyInstance = StoredKey(context: context)
        
        aKeyInstance.binaryData = keyToStore as NSData
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
    
    //MARK: Fetching the last key stored
    func getKey() -> Data
    {
      var returnedKey = StoredKey()
      var fetchedKeys: [StoredKey] = []
        
      let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
      do
       {
        fetchedKeys = try context.fetch(StoredKey.fetchRequest()) as! [StoredKey]
        print("Fecthed key: ", fetchedKeys)
       }
       catch{}
    
        
      for instance in fetchedKeys
        {
          returnedKey = instance
        }
    
        print("The number of keys stored with CoreData is \(fetchedKeys.count)")

        if (fetchedKeys.count > 1)
        {
             print("\n\n!!!ERROR!!! label: g38924hgo3qg4893h4g\n")
            
        }
        
        return returnedKey.binaryData as! Data
        
    }
    
    //MARK: cleaning the key storer:
    func clean()
    {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        var fetchedKeys: [StoredKey] = []
        
        do
        {
            fetchedKeys = try context.fetch(StoredKey.fetchRequest()) as! [StoredKey]
        }
        catch{}
        
        for instance in fetchedKeys
        {

            print("Deleting instance: ", instance)
            
            context.delete(instance)
            
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }

    }
    
}
