//
//  Employee.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MADCorp. All rights reserved.
//

import Foundation

class employee
{
    var empid : Int?
    var empname : String?
    var basicpay : Double?
    
    init()
    {
        self.empid = 0
        self.empname = ""
        self.basicpay = 0
    }
    
    init(id : Int, name : String, pay : Double)
    {
        self.empid = id
        self.empname = name
        self.basicpay = pay
    }
    
    deinit
    {
        print("Object Deinitialized")
    }
    
    func display()
    {
        print("Employee ID : ",self.empid)
        print("Employee Name : ",self.empname)
        print("Employee Basic Pay : ",self.basicpay)
    }
}
