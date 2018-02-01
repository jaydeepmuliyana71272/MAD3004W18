//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//closure
var month = [4,3,1,6,5,2]
print(month.sorted()) //araange in incrasing order


//reverse month
func reverse(_ s1:Int, _ s2:Int ) -> Bool
{
    return s1 > s2
}

var reversedmonth = month.sorted(by : reverse)  //sorted by reverse
print("reversed month:", reversedmonth)

// sorted month
func increasing(_ s1:Int, _ s2:Int) -> Bool
{
    return s1 < s2
}

var increasingmonth = month.sorted(by : increasing)  //sorted by increaing or sort
print("Increasing month:",increasingmonth)


//closure syntax
/*
 { (parameters) -> return type in
    statements
 
 */

//create closure
var reverseclosure = month.sorted(by : {
    (s1 : Int, s2 : Int) -> Bool in
    return s1 > s2
})
 print("Reversed Closure",reverseclosure)

//inferring parameter types from context
var infertypes = month.sorted(by : {
    //(s1,s2) in      //take array data type itself
    //return s1 < s2
    (s1,s2) in s1 < s2 //implicit return
})
print("Increasing Closure",infertypes)


//shorthand argument names
print("shorthand argument:",month.sorted(by : {$0 < $1}))  //use $0 < $1 instead of s1 <s2

//operator method
print("Operator MEthods:",month.sorted(by : <))  //use only operator also


var three = [1,3,4,5,6,8,9,12,15]
print("Three: ",three)

//filter
var modthree = three.filter({ $0 % 3 == 0})  //module
print("Modthree:",modthree)

var even = three.filter({ $0 % 2 == 0})  //even
print("Even:",even)

//nested function
func makeincrementer(forincrement amount : Int) -> () -> Int  //same prototype as function
{
    var runningtotal = 0
    
    func incrementer() -> Int //can access all the value of outer function
    {
        runningtotal += amount
        return runningtotal  //can modify outer function value
    }
    return incrementer
}
let incrementbyten = makeincrementer(forincrement: 10)
print("First call:",incrementbyten())
print("Second call:",incrementbyten())
print("Third call:",incrementbyten())

let incrementbyseven = makeincrementer(forincrement: 7)
print("Increment by seven 1:",incrementbyseven())
print("Increment by seven 2:",incrementbyseven())

print("Fourth Call:",incrementbyten())

//closures are reference type
let incrementbysevenagain = incrementbyseven
print("Increment by seven 3:",incrementbysevenagain())


//auto closure  //it delay execution
var errorlist = [404,414,402,431,455,440]
print("Total Errors : ",errorlist.count)

let debugger = { errorlist.remove(at: 0)} //remove
print("Total Errors : ",errorlist.count)  //no change in output untill you call it

print("Now solving \(debugger())!")
print("Total Errors : ",errorlist.count)
print("Error List: ",errorlist)


func solve(error debugger : @autoclosure () -> Int)
{
    print("Now Solving \(debugger())")
}
solve(error: errorlist.remove(at: 0))
print("Error List: ", errorlist)



//class activity
//trailing closures
func somefunction(n:Int , closure: (Int) -> Void)
{
    closure(n * n * n)
}
somefunction(n : 10)
    { (cube) in
        print(cube)
    }


//An escaping closure is a closure that’s called after the function it was passed to returns. In other words, it outlives the function it was passed to.

func escapingclosure(completionhandler: @escaping () -> Void) {
    print("F1")
    completionhandler()
    return
}
escapingclosure {
    print("F2")
}
