//
//  Controllers.swift
//  k
//
//
//  Controllers.swift
//  k
//
//  Created by Manolescu Mihai Alexandru on 20/11/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//
import Foundation
import UIKit
import RealmSwift
import CoreData

let realm = try! Realm()
var cards: Results<Card> = { realm.objects(Card.self) }()

//MODEL:
class Card: Object
{
    dynamic var name = ""
    dynamic var text = ""
}

//ACCESS MODIFIERS:
func write()
{
    try! realm.write(name: String, text: String)
    {
        let newCard = Card()
        newCard.name = name
        newCard.text = text
        
        realm.add(newCard)
    }
}

func displayAllObjects()
{
    print("\n_________________________\ndisplayAllObjects()")
    print("Displaying objects:")
    
    var i=0;
    
    for object in cards
    {
        print("\nObject #\(i): ", object.name, "\n" ,object.text)
        i += 1;
    }
    print("_________________________END OF FUNCTION\n")
}

func deleteObject(with index: Int)
{
    var i=0;
    for object in cards
    {
        if i==index
        {
            try! realm.write()
            {
                realm.delete(object)
            }
        }
        
        i += 1
    }
    
    
}
