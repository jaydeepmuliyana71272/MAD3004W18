//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//function
func add()
{
    print("I am in user defined function")
}

add()


func welcome(name:String)
{
    print("Hello, \(name)")
}
welcome(name: "JK Patel")


func add(n1:Int, n2:Int)  // create function using parameter // parameters are already let(constant) so we can not change through out the code
{
    var sum : Int
    sum = n1 + n2
    print("Sum:",sum)
}
add(n1: 10, n2: 20) // insert value into function
//add(20,10) create error
//add(n2:10, n1:20) create error because n1 is before n2

func sub(a:Int, _ b:Int)  //use _ for optional value
{
    let c = a - b
    print("Sub: \(c)")
}
sub(a: 20, 10) //don't need to give parameter name if it is optional

//single return type
func mul(a:Int, b:Int) -> Int //-> return type declaration
{
    let c = a * b
    return c
}
var c = mul(a: 5, b: 2)
print("Mul:\(c)")

func swipe(number1 a: Int, b: Int) -> (Int,Int)
{
    return(b,a)
}
var (a, b) = swipe(number1: 10, b:20)
print("a: \(a), b: \(b)")
(_, c) = swipe(number1: 10, b: 20)
print("C: \(c)")

//inout concept
func swipe(aa:inout Double, bb: inout Double) //by use of inout we can change or give the value of parameter
{
    let temp = aa
    aa = bb
    bb = temp
}

var x = 8.0, y = 9.0
swipe(aa:&x, bb:&y)
print("X: \(x), Y: \(y)")


//default parameter
func simpleinterest(amount:Double, noofyears:Double, rate:Double = 5.0) -> Double //default rate is 5
{
    let si = amount * rate * noofyears / 100
    return si
}

print("Simple unterest: \(simpleinterest(amount : 1000 , noofyears : 5))")
print("Simple unterest: \(simpleinterest(amount : 1000 , noofyears : 5 , rate:10))")

func si(amount:Double, _ noofyears:Double, rate:Double = 5.0) -> Double //default rate is 5 optional value using _
{
    let s = amount * rate * noofyears / 100
    return s
}

//variadic parameters
func display(n:Int...)
{
    for i in  n
    {
        print(i)
    }
}
display(n: 1,2,3,4,5)
display(n: 10,20,30)

//passing array as parameter
func display(numbervalues:Int, parameters:[Int]...) //parameters[Int] is array write array type in []
{
    print("Number of values \(numbervalues)")
    for  i in parameters
    {
        print("i: \(i)")
    }
}
var arr = [1,2,3,4,5]
display(numbervalues:3, parameters:arr,arr,arr)


//sum of two array
func display(arraylist:[Int]...) -> [Int]
{
    var array1 = arraylist[0]
    var array2 = arraylist[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
    }
    return result;
}
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arraylist:a1,a2)
print(a1)
print(a3)
