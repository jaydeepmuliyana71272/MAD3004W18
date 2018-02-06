//
//  class.swift
//  protocol
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class testa : IDisplay, IDisplayValue  //implement protocols
{
    var n2: Int = 0
    
    var n1 : Int = 20
    
    
    //define all functions which are in protocols
    func displayvalue()
    {
        print("Value of n1 : \(n1)")
    }
    func display()
    {
        print("Inside class Test")
    }
    
    //var n1 : Int?
}
