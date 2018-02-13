//
//  user.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class user
{
    var userid : String
    var pwd : String
    var loginstatus : String
    var id : String
    
    init ()
    {
        self.userid = ""
        self.pwd = ""
        self.loginstatus = ""
        self.id = ""
    }
    
    init(userid : String, pwd : String, loginstatus : String, id : String)
    {
        self.userid = userid
        self.pwd = pwd
        self.loginstatus = loginstatus
        self.id = id
    }
    
    func check(userid : String, upwd : String, id : String)
    {
        if(userid == id && pwd == upwd)
            {
                print("********** Login Successful **********\n")
                let cust = customer()
                cust.updateprofile(userid : userid)
            }
        else
        {
            print("Sorry Not Matched")
            let cust = customer()
            cust.select()
            
            
        }
    }
}
