//
//  permanentemployee.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MADCorp. All rights reserved.
//

import Foundation

class permanentemployee : employee
{
    var vacationweeks : Int?
    
    override init()
    {
        super.init()
        self.vacationweeks = 0
    }
    
    init(eid : Int, ename : String, epay : Double, weeks : Int)
    {
        super.init(id : eid, name : ename, pay : epay)
        self.vacationweeks = weeks
    }
    
    deinit
    {
        print("Object Deinitialized")
    }
    
    override func display()
    {
        super.display()
        print("Vacation Weeks : ",vacationweeks)
    }
}
