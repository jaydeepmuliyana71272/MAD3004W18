//
//  main.swift
//  classactivity
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var spdfine = 200
var redlight = 300
var seatbelt = 400


var pan = panelty()

do
{
    try pan.tickettype(number: "T1")
}

catch ticket.notp
{
    print("Not Available")
}
    
catch ticket.speed
{
    print("Disapprove")
    print("Overspeeding")
    print("Fine Decrease to : \(spdfine-100)")
}

catch ticket.redlight
{
    print("Disapprove")
    print("Red Light Fine")
    print("Fine Decrease to : \(redlight-100)")
}

catch ticket.seatbelt
{
    print("Disapprove")
    print("No Seat Belt")
    print("Fine Decrease to : \(seatbelt-100)")
}

catch ticket.inlicense
{
    print("Disapprove")
    print("License Not Valid")
 
}
