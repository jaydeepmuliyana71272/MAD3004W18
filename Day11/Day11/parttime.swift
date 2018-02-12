//
//  parttime.swift
//  Day11
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class parttime
{
    var sname : String?
    fileprivate func setStudentName(sname : String)
    {
        self.sname = sname
    }
}

internal class ExtendPartTime : parttime
{
    override internal func setStudentName(sname: String)
    {
        super.setStudentName(sname: sname)
    }
}
