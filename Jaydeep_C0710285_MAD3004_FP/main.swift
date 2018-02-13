//
//  main.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//print("Hello, World!")

print("Select User : ")
print("1) Customer")
print("2) Admin")
//print("Select Your Choice -----> ")
let choice = Int(readLine()!)

switch choice
{
case 1? :
    print("********** Welcome Customer **********\n")
    let cust = customer()
    cust.select()
 
case 2? :
    print("********** Welcome Admin **********\n")
    let ad = admin()
    ad.adlogin()

default :
    print("Invalid")
}
