//
//  requestlimitincrease.swift
//  Day10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class requestlimitincrease
{
    var requestreceived =
    [
        "S1100" : requestfromaccount(type : "Saving", balance : 1234.09, reqstatus : "In Process"),
        "S1200" : requestfromaccount(type : "Saving", balance : 5080.09, reqstatus : "In Process"),
        "S1300" : requestfromaccount(type : "Chequing", balance : 10000.09, reqstatus : "In Process"),
        "S1400" : requestfromaccount(type : "Saving", balance : 5400, reqstatus : "Approved")
    ]



    //function to check
    func increaselimit(accountno acno : String) throws
    {
    
        //guard perform the function of IF
        guard let reqacc = requestreceived[acno]
            else
        {
            throw limitIncreaseError.ineligible
        }
    
        guard reqacc.type == "Saving"
            else
        {
            throw limitIncreaseError.nosavingaccount
        }
        
        guard reqacc.balance >= 5000
            else
        {
            throw limitIncreaseError.insufficientbalance(balanceneeded: 5000-reqacc.balance)
        }
    
        var approvedrequest = reqacc
        approvedrequest.reqstatus = "Approved"
        print("Your request is approved")
    }
}
