//
//  main.swift
//  Day11
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//var objStu = student()
//objStu.display()
//objStu.display(message : "JAY")


//var p1 = parttime()
//p1.setStudentName

var obj = ExtendPartTime()
obj.setStudentName(sname: "JAY")
class T : ExtendPartTime
{
    override init() {
        super.init()
        print("Display T")
    }
}

var t1 = T() 
