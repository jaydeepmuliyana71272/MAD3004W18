//
//  payroll.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MADCorp. All rights reserved.
//

import Foundation

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
        super.init(eid : eid, ename : ename, epay : epay, weeks : weeks)
    }
    
    override func display()
    {
        super.display()
        print("Net Pay : ",self.finalpay)
    }
}
