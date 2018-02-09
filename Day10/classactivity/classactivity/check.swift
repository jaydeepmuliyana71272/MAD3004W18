//
//  check.swift
//  classactivity
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class panelty
{
    var type =
    [
        "T1" : check(typ : "speeding", spd : 60, licissue : "4", pass : "Y", license : "Valid"),
        "T2" : check(typ : "redlight", spd : 40, licissue : "2", pass : "N", license : "Valid"),
        "T3" : check(typ : "seatbelt", spd : 50, licissue : "4", pass : "Y", license : "Valid"),
        "T4" : check(typ : "invalidlicense", spd : 40, licissue : "4", pass : "Y", license : "Invalid")
    ]
    
    func tickettype(number tnumber : String) throws
    {
        guard let chk = type[tnumber]
        else
        {
            throw ticket.notp
        }
        
        guard chk.typ == "redlight" && chk.licissue >= "3"
            else
        {
            throw ticket.redlight
        }
        
       guard chk.typ == "speeding" && chk.spd <= 50
        else
        {
            throw ticket.speed
        }
       
        guard chk.typ == "seatbelt" && chk.pass == "N"
        else
        {
            throw ticket.seatbelt
        }
        
        guard chk.typ == "invalidlicense" && chk.license == "Valid"
        else
        {
            throw ticket.inlicense
        }
     
       
    }
}


