//
//  bonus.swift
//  Day10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

enum limitIncreaseError : Error
{
    case insufficientbalance(balanceneeded : Double)  //calculate balance
    case nosavingaccount  //checking account type
    case ineligible  //eligible or not
    case status 
}

struct requestfromaccount
{
    var type : String
    var balance : Double
    var reqstatus : String
}
