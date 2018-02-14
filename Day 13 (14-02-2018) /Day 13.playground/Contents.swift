//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//static
//final class employee //we can not inherit class which are declared as final 
class employee
{
    let min_pay = 11.60
    var a : String
    
    static var noofobject = 0
    init()
    {
        a = ""
        employee.noofobject += 1  //use of static without static function (write class name)
    }
    
    static func getnoofobject() -> Int
    {
        return noofobject  //use of static with static function
    }
    
    func greet(name : String)
    {
        print("Employee : \(name)")
    }
    deinit
    {
        print("Employee Deinit")
    }
}

var e1 = employee()
print(employee.getnoofobject())  //for print also we have to use class name to access static variable
e1.greet(name: "Jaydeep")
var e2 = employee()
print(employee.getnoofobject())

class parttime : employee
{
    override func greet (name: String)
    {
        print("Parttime : \(name)")
    }
    
    deinit
    {
        print("Parttime Deinit")
    }
}

var p1 = parttime()
p1.greet(name: "Jay")
//p1.noofobject() //static member can not access by sub class

e1 = p1
e1.greet(name: "Name")

var r1 : employee
r1 = employee()
r1.greet(name: "Employee")

r1 = parttime()
r1.greet(name: "Parttime")

p1 = e1 as! parttime
p1.greet(name: "J")
