//
//  user.swift
//  MADcoo4
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class user

{
    var userid : String?
    var password : String?
    var loginstatus : String?
    
    init()
    {
        self.userid = ""
        self.password = ""
        self.loginstatus = ""
    }
    
    init(uid : String, pwd : String, ustatus : String)
    {
        self.userid = uid
        self.password = pwd
        self.loginstatus = ustatus
    }
    
    func verifylogin() -> Bool
    {
        return true
    }
    
    func display()
    {
        print("User Executed 🤪")
    }
  
}
