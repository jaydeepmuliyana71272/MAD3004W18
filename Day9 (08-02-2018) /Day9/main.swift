//
//  main.swift
//  Day9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

var objmanu = manufacturer(name  : "Audi" )
print("\(objmanu.name)")

var veh = vehicle(name: "Audi", noofwheels: 4)
print("Manufacturer name is \(veh.name) and it has \(veh.noofwheels) wheels. ")

let prefer = preference()
print(prefer.desc)


var laptop = product(name : "Laptop")

//object of product
if let machine = laptop
{
    print("Product name  is : \(machine.name)")
}

//return nil
let anonymousMachine = product(name : "")

if anonymousMachine == nil
{
    print("Could not initialized")
}

//object of cartitem
/*if let project = cartitem(name : "Projector" ,quantity : 3)
{
    print("Product is : \(project.name) and total is : \(project.quantity)")
}
*/


/*
//Class Activity
 print("*********** License ********** ")
var name = person(name: "Jay", add: "Toronto")
//print("Applicant Name : \(name!.name) Applicant Add : \(name!.add)")

var age = lic(name: name!.name, add: name!.add, age: 14, loc: name!.add)
if age!.age <= 16
{
    let chk = 16 - age!.age
    print("Sorry! You are under age apply after \(chk) years. ")
}
else
{
    print("Applicant Name : \(name!.name) | Applicant Add : \(name!.add) | Age: \(age!.age)")
    print("License will be mail to your address soon. ")
}
*/
