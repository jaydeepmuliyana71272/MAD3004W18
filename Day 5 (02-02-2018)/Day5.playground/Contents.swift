//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class employee
{
    var empid : Int?
    var empname :String?
    var basicpay : Double?
 
    //initializers  //assign initial value
    init()
    {
        self.empid = 0
        self.empname = ""
        self.basicpay = 0
    }
   
    //parameterised initializers
    init(id : Int, name : String, pay : Double)
    {
        self.empid = id
        self.empname = name
        self.basicpay = pay
    }
    
    //deinitializer
    deinit
    {
        print("Object Deinitialized")
    }
    
    func display()
    {
        print("Employee ID : ",self.empid!)  //self for same class
        print("Employee Name : ",self.empname!)
        print("Employee Pay : ",self.basicpay!)
    }
}

var emp1 = employee()
emp1.empid = 101
emp1.empname = "Jaydeep"
emp1.basicpay = 10000
emp1.display()  //call function

var emp3 = employee()
emp3.display()  //display assign value or default value

var emp4 = employee(id : 103, name : "JD", pay : 7000)
//emp4.display()

//inheritance

class permanentemployee : employee  //inheritance
{
    var vacationweeks : Int?
    
    //default initializer
    override init()  //over ride the init also
    {
        super.init()  //we have to call super class init also
        self.vacationweeks = 0
    }
    //parameterized initializer
    init(eid : Int, ename : String, epay : Double, weeks : Int)
    {
        super.init(id : eid, name : ename, pay : epay)
        self.vacationweeks = weeks
    }
    
    //deinitializer
    deinit
    {
        print("Object Deinitialized")
    }
    
    
    override func display() {  //write override to override the same name function
        super.display()  //write super keyword to refer super class function
        print("Vacation Weeks : ",vacationweeks!)
    }
}

var obj2 = permanentemployee()
obj2.empid = 102
obj2.empname = "Jay"
obj2.basicpay = 20000
obj2.vacationweeks = 5
obj2.display()

var obj5 = permanentemployee(eid : 107, ename : "J", epay : 7000, weeks : 5)
obj5.display()

class payroll : permanentemployee
{
    var finalpay : Double
    {
        get
        {
            let x = self.vacationweeks!
            if x > 5
            {
                return self.basicpay! - 100
            }
            else
            {
                return self.basicpay!
            }
        }
    }
    
    override init()
    {
        super.init()
       
    }
    
    override init(eid : Int, ename : String, epay : Double, weeks : Int)
    {
       
        super.init(eid : eid, ename : ename, epay : epay, weeks : weeks)
        
    }
    
 /*   func calc()
    {
        var x = self.vacationweeks!
        if x > 5
        {
            print("Salary : ",self.finalpay! = self.basicpay! - 100)
        }
        else
        {
            print("Salary : ",self.finalpay! = self.basicpay!)
        }
    } */
    
    override func display()
    {
        super.display()
        print("Net Pay:",self.finalpay)
    }
    
}

var obj7 = payroll()
obj7 = payroll(eid: 111, ename: "JM", epay: 5000, weeks: 6)
obj7.display()


//manipulate object array []
var janpayroll = [payroll]()
let noofemployee = 2

for  i in 0..<2
{
    janpayroll.append(payroll(eid : 115, ename : "JAY", epay : 73264, weeks : 8))
    janpayroll[i].display()
}
