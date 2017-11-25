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
        
        let storer = CDManipulator()
        
        
        
        print("#Current adress of the file: \(Realm.Configuration.defaultConfiguration.fileURL!)")
        
        let s = "hellohellohellohellohellohellohellohellohellohellohellohellohell"
        var key = Data(count: 64)
        key = s.data(using: String.Encoding.utf8)!
        
        let encryptionConfig = Realm.Configuration(encryptionKey: key)
        
        
        
        
        // Attempt to open the encrypted Realm
        do {
            let realm = try Realm(configuration: encryptionConfig)
            // At this point, the key was accepted and we can use the Realm as normal
            
//            try! realm.write()
//            {
//                let newCard = Card()
//                newCard.name = "heeeeeeey"
//                newCard.text = "encryption"
//                
//                realm.add(newCard)
//            }
            
            let cards = realm.objects(Card.self)
            
            print("Number of cards: ", cards.count)
            
            for card in cards
            {
             print("card: ",card)
            }
        }catch let error as NSError
        {
            fatalError("Error \(error)")
        }
        
        
        
        //***UNCOMENT for debugging the storer:
        
        //creating the key:
//        let s = "hellohellohellohellohellohellohellohellohellohellohellohellohell"
//        //        var keyy = Data(count: 64)
//        //        keyy = s.data(using: String.Encoding.utf8)!
//        //        print("\n The encryption key is: #\(keyy)#\n")
//
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
        //print("@@@Key: ",storer.fetch())
        //write("privet", "odin text!")
        
        
        
        //displayL()
        

//         let adress1 = "\(Realm.Configuration.defaultConfiguration.fileURL!)"
//         print("initial adress: ", adress1)
//         
//         //creating the key:
//         let s = "hellohellohellohellohellohellohellohellohellohellohellohellohell"
//         var key = Data(count: 64)
//         key = s.data(using: String.Encoding.utf8)!
//         print("\n The encryption key is: #\(key)#\n")
//         
//         //save key in storer:
//         storer.setKey(key)
//
//         //choose the adress path of the file:
//         let onHDD = URL(string: "/Users/alexinntekt/Desktop/pol.realm")
//         
//         //make a copy of the un-encrypted database to an encripted version:
//         do
//         {
//         try Realm().writeCopy(toFile: onHDD!, encryptionKey: key)
//         }
//         catch let error as NSError
//                             {
//                               // If the encryption key was not accepted, the error will state that the database was invalid
//                               fatalError("Error copying Realm: \(error)")
//                             }
 
    
        
        

//                let keyy = storer.getKey()
//        /*
//                 print("File to be deleted: \(Realm.Configuration.defaultConfiguration.fileURL!)")
//                 do
//                 {
//                 try FileManager.default.removeItem(at: Realm.Configuration.defaultConfiguration.fileURL!)
//                 }  catch {}
//        */
//                let onHDD = URL(string: "///Users/alexinntekt/Library/Developer/CoreSimulator/Devices/FC98C483-B8E0-4A20-9A7F-0C0E7FAFF570/data/Containers/Data/Application/2C21A652-0ABA-4684-9A84-6B972A952A90/Documents/default.realm")
//        
//                Realm.Configuration.defaultConfiguration.fileURL = onHDD
//                print("±Current configuration adress file: \(Realm.Configuration.defaultConfiguration.fileURL!)")
//                var encryptionConfig = Realm.Configuration(encryptionKey: keyy)
//                encryptionConfig = realm.configuration
//                
//        
//                do{
//                        print("Current configuration adress file: \(Realm.Configuration.defaultConfiguration.fileURL)")
//                        let realm = try! Realm(configuration: encryptionConfig)
//                        // At this point, the key was accepted and we can use the Realm as normal
//                        let cards = realm.objects(Card.self)
//                    
//                       print("number of cards: ", cards.count)
//                    
//                       for card in cards
//                       {
//                          print("card: ",card)
//                       }
//                    
//                   }catch let error as NSError
//                     {
//                       // If the encryption key was not accepted, the error will state that the database was invalid
//                       fatalError("Error opening Realm: \(error)")
//                     }
        
        //displayL()

      }
    
    func displayL()
    {
        print("\ncalling displayL():\n")
        
        let cards = realm.objects(Card.self)
        
        print("number of cards: ", cards.count)
        
        for card in cards
        {
            print("card: ",card)
        }
    }
    
    
}
