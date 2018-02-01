//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//structure
struct project
{
    var title = ""
    var hours = 0
    
    func display()
    {
        print("Project Title:",title)
        print("Total work required:",hours)
    }
}

//declaring instance of structure
var lmsproject = project(title:"Moodle", hours:200)
print(lmsproject)

lmsproject.display()

lmsproject.hours = 300 //update value
lmsproject.display()

//class
class manager
{
    var name : String = ""
    var productowner : Bool = true
    var currentprojects = project()
}

//instance of class
let mgrcanada = manager()
mgrcanada.name = "JK"
mgrcanada.productowner = true
mgrcanada.currentprojects = project(title : "Sales Reporting", hours : 20) // assign value to structure

print("Name : ",mgrcanada.name)
print("Product Owner : ",mgrcanada.productowner)
print("Project Title : ",mgrcanada.currentprojects.title)  //print the value form structure
print("Hours : ",mgrcanada.currentprojects.hours)



//change the value
mgrcanada.productowner = false
mgrcanada.currentprojects = project(title: "Sales Reporting", hours : 30)

print("Name : ",mgrcanada.name)
print("Product Owner : ",mgrcanada.productowner)
print("Project Title : ",mgrcanada.currentprojects.title)
print("Hours : ",mgrcanada.currentprojects.hours)

//structures are value type
struct address
{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalcode = "M1H1Y1"
}

var lambton = address()
print("Lambton : ",lambton)

var cestar = lambton
print("Cestar : ",cestar)

//change in second instance
cestar.street = "271 Yorkland Blvd"
cestar.postalcode = "M1H3Y3"
print("Cestar : ",cestar)
print("Lambton : ",lambton)  //not change the value of first instance

//classes are reference types
class institute
{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalcode = "M1H1Y1"
}

var mylambton = institute()
print("Street:",mylambton.street)
print("City:",mylambton.city)
print("Postal Code:",mylambton.postalcode)

var mycestar = mylambton
print("Cestar Street : ",mycestar.street)
print("Cestar City : ",mycestar.city)
print("Cestar Postal Code : ",mycestar.postalcode)

//change the value
mycestar.street = "271 Yorkland Blvd"
mycestar.postalcode = "M3H3Y3"
print("Street : ",mylambton.street)  //change the value of all instance
print("Postal Code : ",mylambton.postalcode)  //chnage the value of lambton also

//identical to //compare two instance
if mylambton === mycestar
{
    print("Are Same")
}
else
{
    print("Not Same")
}

var yourcestar = institute()
if yourcestar === mycestar
{
    print("Are Same")
}
else
{
    print("Not Same")
}






