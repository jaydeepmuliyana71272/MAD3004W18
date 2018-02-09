//
//  ticket.swift
//  classactivity
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

enum ticket : Error 
{
    case notp  
    case speed
    case redlight
    case seatbelt
    case inlicense
}

struct check
{
    var typ : String 
    var spd : Double
    var licissue : String
    var pass : String
    var license : String
    //var fine : Double 
}
