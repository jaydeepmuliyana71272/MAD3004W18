//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Dictionary
var nameofintegers = [Int:String]() // Create dictionary (Int = Key, String = Type)
nameofintegers[16] = "sixteen"
print("name of integers: \(nameofintegers)")
nameofintegers[28] = "twenty eight"
print("dictionary contains: \(nameofintegers.count) elements")  //count number of elements
print("dictionary : ",nameofintegers)

nameofintegers = [:]  //empty dictionary

print("dictionary contains : \(nameofintegers.count) elements")
print("name of integers : ",nameofintegers)


//checking empty dictionary
if nameofintegers.isEmpty
{
    print("Dictionary is empty")
}
else
{
    print(nameofintegers)
}


var airports : [String:String] = ["YYZ" : "Toronto Pearson", "DUB" : "Dublin"]
print("airports : \(airports)")
print("Airport dictionary contains \(airports.count) items.")
airports["LHR"] = "London Heathrow"  // add new
airports["YYZ"] = "TP International" // change the value
print("Airports: \(airports)")

airports["AMD"] = "SVP International"
print("Airports: \(airports)")


let oldvalue = airports.updateValue("Dublin Airport", forKey: "DUB")    // update value using updatevalue

print("the old value for DUB was \(oldvalue)")
print("AIrports: \(airports)")

//check airport is available or not
if let airportname = airports["AMD"]   // use key to find the data
{
    print("AIRPORT NAME IS \(airportname)")
}
else
{
    print("Airport not Exist")
}

airports["MARS"] = "Range Rover"
print(airports)
airports["MARS"] = nil  // delete from dictionary by assign nil value to key
print("Airports: \(airports)")

//other way to remove
if let removevalue = airports.removeValue(forKey: "DUB")  //delete or remove from dictionary using removevalue
{
    print("Removed Airport is : \(removevalue)")
}

else
{
    print("Airport not Exist")
}


//display or print dictionary
for (airportcode, airportname) in airports
{
    print(airportcode, airportname)
}

// display or print dictionary
for airportcode in airports.keys
{
    print("Airport code: \(airportcode)")
}

for airportname in airports.values
{
    print("Airport Name: \(airportname)")
}

let airportcode = [String](airports.keys)
print("Airport code: \(airportcode)")

let airportname = [String](airports.values)
print("Airport Name: \(airportname)")


var d1 : Dictionary<String, String> = ["India":"Hindi","Canada":"English"]  // create dictionary
print(d1)  //print dictionary
print(d1.description)  //print dictionary
print(d1["India"]!)  //print using key value
print(d1["Canada"]!) //print using key value
print(d1["USA"])  //show nil or null value
d1["China"] = "Mandarin"  //add new value

//to print whole data or dictionary
for (k,v) in d1
{
    print("\(k) -> \(v)")
}

// create dictionary with Any value type
var d3 = [String:AnyObject]()  //use anyobject to assign any type
d3["firstname"] = "JK" as AnyObject  // to cast write as
d3["lastname"] = "Patel" as AnyObject
d3["age"] = Int(50) as AnyObject
d3["salary"] = nil
print("d3",d3)

for(k,v) in d3
{
    print("\(k) -> \(v)")
}

for obj in d3{
    print("\(obj.key) -> \(obj.value)")
}

//Tuples
var x = (10,20,"Patel") //create tuples
print(x.0) //print using index for that write tuples name.index
print(x.1)
print(x.2)

let http404error = (404,"Not Found")
print(http404error)

//to print code and message
let (statuscode, statusmessage) = http404error
print("statuscode:",statuscode)
print("statusmessage:",statusmessage)

//to print code only
let (codeonly, _) = http404error // use _ to define unwanted value
print("code only:",codeonly)

let errordescription  = (code: 404, message: "not found")
print(errordescription.code,errordescription.message)


//class activity (address)
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



