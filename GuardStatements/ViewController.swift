//
//  ViewController.swift
//  GuardStatements
//
//  Created by Randall Mardus on 2/11/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        struct Customer {
            var name: String?
            var age: Int?
            var phone: Int?
            
            func isValid() {
                
                guard let validName = name else {
                    print("Invalid name")
                    return
                }
                
                guard let validAge = age where age > 0 else {
                    print("Invalid age")
                    return
                }
                
                guard let validPhone = phone else {
                    print("Invalid phone")
                    return
                }
                
                print("Our customer is valid: ", validName, validAge, validPhone)
            }
        }
        
        var firstCustomer = Customer()
        firstCustomer.isValid()
        
        firstCustomer.name = "Marvin"
        firstCustomer.phone = 5551212
        firstCustomer.age = 0
        firstCustomer.isValid()
        
        firstCustomer.age = 32
        firstCustomer.isValid()
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

