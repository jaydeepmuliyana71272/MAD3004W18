//
//  arithmetic.swift
//  protocol
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class arithmetic : ICalculate
{
    var n1 : Int
    var n2 : Int
    
    required init(n1: Int, n2: Int) {  //required 
        self.n1 = n1
        self.n2 = n2
    }
    
    /*
    func calculate()
    {
        let result = self.n1 + self.n2
        print("Result : ",result)
    }
 
    */
}
