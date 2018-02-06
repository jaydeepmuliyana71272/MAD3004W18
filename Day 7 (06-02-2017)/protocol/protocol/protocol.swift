//
//  protocol.swift
//  protocol
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

protocol IDisplay  //define protocol
{
    func display()  //function 
   
}

protocol IDisplayValue
{
    var n1 : Int {get set}
    var n2 : Int {get set} //define variable //get set
    func displayvalue()
}

protocol ICalculate
{
    var n1 : Int {get set}
    var n2 : Int {get set}
    
    
    //initialise 
    init(n1 : Int, n2 :Int) 
}
