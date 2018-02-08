//
//  license.swift
//  Day9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class lic : person
{
    let age : Int
    let loc : String
    
    init?(name : String, add : String, age: Int, loc : String)
    {
        if age == 0
        {
            return nil
        }
        self.age = age
        self.loc = loc
        super.init(name: name, add: add)
    }
}

