//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func fact(n : Int) -> Int
{
    if n == 1
    {
        return 1
    }
    else
    {
        return n * fact(n: n - 1 )
    }
}
let a = 5
let x = fact(n: a)
print("Factorial:",x)
