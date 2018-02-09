//
//  main.swift
//  Day10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//error handling
//throw limitIncreaseError.ineligible  //throw + enum(name) + errorname



var processrequest = requestlimitincrease()
//try obj1.increaselimit(accountno: "S1100")  //"try" must used

do
{
    try processrequest.increaselimit(accountno: "S1100")
}
catch is limitIncreaseError
{
    print("Something wrong with your account")
}
/*    print("No sufficient balance")

catch limitIncreaseError.ineligible
{
    print("Don't have account")
}
catch limitIncreaseError.nosavingaccount
{
    print("No saving account ")
}
catch
{
    print("Unexpected Error")
}
*/
