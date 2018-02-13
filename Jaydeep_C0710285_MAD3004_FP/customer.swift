//
//  customer.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class customer : user,customerDisplay
{
    var customername : String
    var custadd : String
    var custemail : String
    var password : String
    var custccinfo : String
    var custshipinfo : String
    
     override init()
    {
        self.customername = ""
        self.custadd = ""
        self.custemail = ""
        self.password = ""
        self.custccinfo = ""
        self.custshipinfo = ""
        super.init()
    }
    
    init(customername : String , custadd : String, custemail : String, password : String, custccinfo : String, custshipinfo : String,userid : String, pwd : String, loginstatus : String, id : String)
     {
        self.customername = customername
        self.custadd = custadd
        self.custemail = custemail
        self.password = password
        self.custccinfo = custccinfo
        self.custshipinfo = custshipinfo
        super.init(userid: userid, pwd: pwd, loginstatus: loginstatus, id: id)
     }
    
    func select()
    {
        print("********** Select Your Choice **********\n")
        print("1) Register")
        print("2) Login")
        print("3) View Profile")
        
        let custip = Int(readLine()!)
        if custip == 1
        {
            register()
        }
        else if custip == 2
        {
            login()
        }
        else if custip == 3
        {
            displaycustomer()
        }
    }
    
    func register()
    {
        print("********** Fill Registration Form ********** ")
        print("Enter Full Name :")
        customername = readLine()!
        print("Enter Address :")
        custadd = readLine()!
        print("Enter E-Mail Id :")
        custemail = readLine()!
        print("Enter Password : ")
        password = readLine()!
        print("Enter Credit Info : ")
        custccinfo = readLine()!
        print("Enter Shipping Info :")
        custshipinfo = readLine()!
        
        print("Full Name : \(customername)")
        print("Address : \(custadd)")
        print("E-Mail Id : \(custemail)")
        print("Credit Card Information : \(custccinfo)")
        print("Shipping Information : \(custshipinfo)")
        
        
        print("Confirm your details\n")
        print("Insert 1 to confirm")
        print("Insert 2 to re-insert\n")
        let c : Int
        c = Int(readLine()!)!
        if c == 1
        {
            select()
        }
        else if c == 2
        {
            register()
        }
    }
    
    func login()
    {
        print("Enter User Name:")
        super.userid = readLine()!
        print("Enter Password:")
        super.pwd = readLine()!
       
        super.check(userid : userid, upwd : self.password, id : self.custemail)
    }
    
    func displaycustomer()
    {
        print("Name : ",customername)
        print("Address : ",custadd)
        print("E-Mail : ",custemail)
        print("CCINFO : ",custccinfo)
        print("Ship Info : ",custshipinfo)
    }
    
    func updateprofile(userid : String)
    {
        print("Welcome User : \(userid)\n")
        print("Select Option : ")
        print("1) Place Order")
        print("2) View Cart")
       // print("3) View Profile")
        let select = Int(readLine()!)
        if select == 1
        {
            let od = orderdetails()
            od.order()
        }
        else if select == 2
        {
            login()
        }
        else
        {
            print("Enter valid number")
            updateprofile(userid: userid)
        }
    }
}
