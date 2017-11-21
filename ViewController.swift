//
//  ViewController.swift
//  k
//
//  Created by Manolescu Mihai Alexandru on 20/11/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import UIKit
import Foundation
import RealmSwift

class ViewController: UIViewController
{
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        
        displayAllObjects()
        deleteObject(with: 1)
        displayAllObjects()
        
        //cards = realm.objects(Card.self)
   
        
        
//        print("\n The number of objects is ", cards.count)
//        
//        print("The third object is: ", cards[2].name)
//    
//        for object in cards
//        {
//            
//            print("\n###Object: ", object.name, "\n" ,object.text)
//            
////            if i==0
////            {
////                try! self.realm.write()
////                {
////                    self.realm.delete(object)
////                }
////            }
////            i += 1;
//        }
        
        
        
        
        //populateDefaultCategories()
        
    }

    func populateDefaultCategories()
    {
        
        if cards.count == 0
        { // 1
            print("\n Running Realm for the first time")
            try! realm.write()
            { // 2
                
                let defaultCategories = [""] // 3
                let itsName = "first card!"
                let itsText = "hello hello hello! this is a card!"
                
                
                
                for category in defaultCategories
                { // 4
                    let newCategory = Card()
                    newCategory.name = category
                    realm.add(newCategory)
                }
            }
            
            cards = realm.objects(Card) // 5
        }
    }


}

