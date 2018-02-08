//
//  person.swift
//  Day9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class person
{
    let name : String
    let add : String
    
    init?(name: String, add : String)
    {
        if name.isEmpty
        {
            return nil
        }
        self.name = name
        self.add = add
    }
}

