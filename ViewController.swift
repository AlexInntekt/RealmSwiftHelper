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
import CoreData

class ViewController: UIViewController
{
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //***UNCOMENT for debugging the storer:
        
 //        //creating the key:
//        let s = "hellohellohellohellohellohellohellohellohellohellohellohellohell"
////        var keyy = Data(count: 64)
////        keyy = s.data(using: String.Encoding.utf8)!
////        print("\n The encryption key is: #\(keyy)#\n")
//        
//        let storer = CDManipulator()
//        let data = storer.fetch()
//
//        let f = String(data: data, encoding: String.Encoding.utf8) as String!
//
//        if f==s
//        {
//            print("\nThey are equal! You are a genius!\n")
//        }
//
//        //print("@@@Key: ",storer.fetch())
        
        
        displayAllObjects()
        /*
        let a1 = "\(Realm.Configuration.defaultConfiguration.fileURL!)"
        print("initial adress: ", a1)
        
        //creating the key:
        let s = "hellohellohellohellohellohellohellohellohellohellohellohellohell"
        var key = Data(count: 64)
        key = s.data(using: String.Encoding.utf8)!
        print("\n The encryption key is: #\(key)#\n")
        
        //choose the adress path of the file:
        let onHDD = URL(string: "///Users/alexinntekt/Desktop/lop.realm")
        

        //make a copy of the un-encrypted database:
        do
        {
            try Realm().writeCopy(toFile: onHDD!, encryptionKey: key)
        }
           catch {}
        */
        
        
        /*
         print("File to be deleted: \(Realm.Configuration.defaultConfiguration.fileURL!)")
        
         do
         {
         try FileManager.default.removeItem(at: Realm.Configuration.defaultConfiguration.fileURL!)
         }  catch {}
        
        let onHDD = URL(string: "///Users/alexinntekt/Desktop/lop.realm")
        
        Realm.Configuration.defaultConfiguration.fileURL = onHDD
        let encryptionConfig = Realm.Configuration(encryptionKey: key)
        */
        
    }

  


}

