//
//  main.swift
//  protocol
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var obj1 = testa()
obj1.n1 = 20
obj1.display()
obj1.displayvalue()

/*
//declare object
var obj2 : IDisplay = testa()
obj2.display()

//type cast
obj2 = obj1 as testa
obj2.display()
*/

//Class B
var obj2 = testb()
//obj2.n1 = 30
//obj2.n2 = 40
//obj2.display()
//obj2.displayvalue()


var objarith = arithmetic(n1 : 20, n2 : 30)
//objarith.calculate()

var addi = operation(n1: 10, n2: 10)
//addi.opr("+")
//addi.calculate()

//extension
/*
let oneInch = 25.6.mm
print("One inch is : \(oneInch) meters")
let threeFeet = 3.ft
print("Three feet is : \(threeFeet) meters")

let marathon = 42.km + 195.m
print("A marathon is : \(marathon) meters ")
*/
 
 
//extension
var s = "Hello"
//print(s.length)
//print(s.vowels)
//print(s.contains(s:"e"))


//Class Activity
let z = 2
print(z.prime())
