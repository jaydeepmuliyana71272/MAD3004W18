//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//class activity

struct add
{
    var street = ""
    var area  = ""
    var postalcode = ""
}

class person
{
    var fname : String = ""
    var lname : String = ""
    var age : String = ""
    var address = add()
    var tamount : String = ""
}

let per = person()
per.fname = "JK"
per.lname = "Patel"
per.age = "50"
per.address = add(street : "265 Yorkland Blvd" ,area : "North York" ,postalcode : "M1H1Y1" )
per.tamount = "2000"

print("First Name : ",per.fname)
print("Last Name : ",per.lname)
print("Age : ",per.age)
print("Address : ",per.address.street,per.address.area,per.address.postalcode)
print("Total Amount",per.tamount)
