//
//  orders.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class orders : customer
{
    var orderid : Int
    var datecreated : Date
    var dateshipped : Date
    //  var custname : String
    var customerid : Int
    var status : String
    var shippingid : String
    
 override init()
    {
        self.orderid = 0
        self.datecreated = Date()
        self.dateshipped = Date()
        //    self.custname = ""
        self.customerid = 0
        self.status = "Approved"
        self.shippingid = "1"
        super.init()
    }
    
    init(orderid : Int,datecreated : Date,dateshipped : Date,customerid : Int,status : String,shippingid : String,customername: String, custadd: String, custemail: String, password: String, custccinfo: String, custshipinfo: String, userid: String, pwd: String, loginstatus: String, id: String)
    {
        self.orderid = orderid
        self.datecreated = datecreated
        self.dateshipped = dateshipped
        self.customerid = customerid
        self.status = status
        self.shippingid = shippingid 
        super.init(customername: customername, custadd: custadd, custemail: custemail, password: password, custccinfo: custccinfo, custshipinfo: custshipinfo, userid: userid, pwd: pwd, loginstatus: loginstatus, id: id)
    }
    
    func display()
    {
      //  let p = orderdetails()
        let sc = shoppingcart()
        print("Confirmed Order")
        print("Date Created : \(datecreated)")
        print("Date Shipped : \(dateshipped)")
        print("Status : \(self.status)")
        print("Shipping ID : \(self.shippingid)")
       // print("PID : \(p.productid)")
        print("Type 1 to View")
        let c : Int
        c = Int(readLine()!)!
        if c == 1
        {
            sc.cartdetails()
        }
    }
    
    func displayfinal()
    {
        //let p = orderdetails()
        let cust = customer()
        print("Please check order details:\n")
        print("Date Created : \(self.datecreated)")
        print("Date Shipped : \(self.dateshipped)")
        print("Status : \(self.status)")
        print("Shipping ID : \(self.shippingid)\n")
       // print("PID : \(p.productid)")
        print("Type 1 to Exit")
        let c = Int(readLine()!)!
        if c == 1
        {
            print("********** Thank you for shopping 😊 **********\n")
            cust.select()
        }
    }
    
}
