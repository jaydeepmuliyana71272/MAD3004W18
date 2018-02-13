//
//  protocol.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

protocol customerDisplay
{
    var customername : String {get set}
    var custadd : String {get set}
    var custemail : String {get set}
    var custccinfo : String {get set}
    var custshipinfo : String {get set}
    
    func displaycustomer()
    
}
