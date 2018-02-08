//
//  manufacturer.swift
//  Day9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class manufacturer
{
    var name : String
    
    //designated initializer
    init (name : String)
    {
        self.name = name 
    }
    
    convenience init()  //convenience used to call designated initializer 
    {
        self.init(name : "[Unknown]")  //to call current class initializer
    }
}
