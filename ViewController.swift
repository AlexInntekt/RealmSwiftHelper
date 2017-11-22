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
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        
        displayAllObjects()
        
//        var key = Data(count: 64)
//        _ = key.withUnsafeMutableBytes
//        { bytes in
//                SecRandomCopyBytes(kSecRandomDefault, 64, bytes)
//        }
        
        var s = "hellohellohellohellohellohellohellohellohellohellohellohellohell"
        var key = Data(count: 64)
        key = s.data(using: String.Encoding.utf8)!
        
        
        let onHDD = URL(string: "///Users/alexinntekt/Desktop/lop.realm")
        
        print("\n The encryption key is: #\(key)#\n")
        
        do
        {
            try Realm().writeCopy(toFile: onHDD!, encryptionKey: key)
        }
            catch
            {
                
            }
        

        
    }

  


}

