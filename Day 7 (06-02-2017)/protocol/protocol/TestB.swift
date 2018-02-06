//
//  TestB.swift
//  protocol
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class testb : testa
{
  //  var n2 : Int?
    
    override func display() {  //override function
        print("Inside Class B")
    }
    
    override func displayvalue()  //overirde function
    {
        print("Value of n1 : \(n2)")
    }
}
