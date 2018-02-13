//
//  admin.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class admin : user
{
    var adname : String
    var admail : String
    
    override init()
    {
        self.adname = ""
        self.admail = ""
        super.init()
    }
    
    init(adname : String, admail : String, userid: String, pwd: String, loginstatus: String, id: String)
    {
        self.adname = adname
        self.admail = admail
        super.init(userid: userid, pwd: pwd, loginstatus: loginstatus, id: id)
    }
    
    func adlogin()
    {
        print("Insert Admin Name : ")
        adname = readLine()!
        print("Insert E-Mail ID : ")
        admail = readLine()!
        if adname == "admin"
        {
            if admail == "admin@admin.com"
            {
                print("********** Welcome Admin **********")
               // print("Insert 1 to Update Catalog")
                update()
            }
            
        }
        else
        {
            print("Invalid Name & E-Mail ☹️")
            print("Insert Again")
            // Again
        }
    }
    
    func update()
    {
        let odt = orderdetails()
        odt.Cat()
         print("Enter 1 to Login: ")
        let s = Int(readLine()!)!
     //   let a : Int
    //    a = Int(readLine()!)!
       if s == 1
        {
            let cu = customer()
            cu.select()
       }
        else
       {
        print("Not Valid")
        }
      //  print("Admin Selected")
    }
}
