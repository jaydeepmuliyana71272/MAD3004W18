//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Class Activity 1
var address = [String:AnyObject]()
address["street"] = "265 Yorkland Blvd" as AnyObject
address["area"] = "North York" as AnyObject
address["postal code"] = "M1H1Y1" as AnyObject

var d4 = [String:AnyObject]()  //use anyobject to assign any type
d4["firstname"] = "JK" as AnyObject  // to cast write as
d4["lastname"] = "Patel" as AnyObject
d4["age"] = 50 as AnyObject
d4["address"] = address as AnyObject
d4["total amount"] = 2000 as AnyObject
print("d4",d4)





/*
Tuples:
We can not change the values.
In Tuples we have index to retrieve value

Dictionary:
In Dictionary we have Key value to retrieve data
It is not ordered. (Not show result in order form)
*/
