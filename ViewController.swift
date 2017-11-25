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
        
        
        print("#Current adress of the file: \(Realm.Configuration.defaultConfiguration.fileURL!)")
        
        //***UNCOMENT for debugging the storer:
        
        //creating the key:
//        let s = "hellohellohellohellohellohellohellohellohellohellohellohellohell"
//        //        var keyy = Data(count: 64)
//        //        keyy = s.data(using: String.Encoding.utf8)!
//        //        print("\n The encryption key is: #\(keyy)#\n")
//        
//        let storer = CDManipulator()
//        let data = storer.getKey()
//        
//        
//        
//        let f = String(data: data, encoding: String.Encoding.utf8) as String!
//        
//        if f==s
//        {
//            print("\nThey are equal! You are a genius!\n")
//        }
//        
//        //print("@@@Key: ",storer.fetch())
        
        write("hello", "a text!")
        displayAllObjects()
        
//         let adress1 = "\(Realm.Configuration.defaultConfiguration.fileURL!)"
//         print("initial adress: ", adress1)
//         
//         //creating the key:
//         let s = "hellohellohellohellohellohellohellohellohellohellohellohellohell"
//         var key = Data(count: 64)
//         key = s.data(using: String.Encoding.utf8)!
//         print("\n The encryption key is: #\(key)#\n")
//         
         //save key in storer:
//         let storer = CDManipulator()
//         storer.setKey(key)
//
//         //choose the adress path of the file:
//         let onHDD = URL(string: "///Users/alexinntekt/Library/Developer/CoreSimulator/Devices/93139118-C1BF-4394-824F-A6942DE1A031/data/Containers/Data/Application/7BC4645E-1ED0-4763-8690-E9697F503323/Documents/lop.realm")
//         
//         //make a copy of the un-encrypted database to an encripted version:
//         do
//         {
//         try Realm().writeCopy(toFile: onHDD!, encryptionKey: key)
//         }
//         catch {}
 
        
        
        
        
        //        let storer = CDManipulator()
        //        let keyy = storer.getKey()
        
        //         print("File to be deleted: \(Realm.Configuration.defaultConfiguration.fileURL!)")
        //
        //         do
        //         {
        //         try FileManager.default.removeItem(at: Realm.Configuration.defaultConfiguration.fileURL!)
        //         }  catch {}
        //
        //        let onHDD = URL(string: "///Users/alexinntekt/Desktop/lop.realm")
        //
        //        Realm.Configuration.defaultConfiguration.fileURL = onHDD
        //        let encryptionConfig = Realm.Configuration(encryptionKey: keyy)
        //
        //        do
        //            {
        //                let realm = try Realm(configuration: encryptionConfig)
        //                // At this point, the key was accepted and we can use the Realm as normal
        //                let cards = realm.objects(Card.self)
        //           }catch let error as NSError {
        //            // If the encryption key was not accepted, the error will state that the database was invalid
        //            fatalError("Error opening Realm: \(error)")
        //        }
        
    }
    
    
    
    
}
