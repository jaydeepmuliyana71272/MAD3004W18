//
//  shoppingcart.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class shoppingcart : customer
{
    var cartid : Int
    var productid : Int
    var quantity : Int
    var dateadded : Date
    
    override init()
    {
        cartid = 0
        productid = 0
        quantity = 0
        dateadded = Date()
        super.init()
    }
    
    init(cartid : Int, productid : Int, quantity : Int, dateadded : Date, customername: String, custadd: String, custemail: String, password: String, custccinfo: String, custshipinfo: String, userid: String, pwd: String, loginstatus: String, id: String)
    {
        self.cartid = cartid
        self.productid = productid
        self.quantity = quantity
        self.dateadded = Date()
        super.init(customername: customername, custadd: custadd, custemail: custemail, password: password, custccinfo: custccinfo, custshipinfo: custshipinfo, userid: userid, pwd: pwd, loginstatus: loginstatus, id: id)
    }
    
  /*  func addcart()
   {
  
    }
    
    func updatequantity(pid : Int, pcost : Int)
    {
        let odt = orderdetails()
        print("Old Quantity \(odt.quantity)")
        odt.uquan()
        
    }
    */
    
    
    func cartdetails()
    {
       
        //let od = orders()
        // let odt = orderdetails()
        //let sh = shippinginfo()
        // print("Insert 1 to add items : ")
        //print("Insert 2 to update items : ")
        
        var a : Int
        print("Insert 1 to view order and checkout")
        a = Int(readLine()!)!
        if a == 1
        {
            checkout()
        }
       
        else
        {
            print("Invalid ☹️ ")
        }
    }
    
    func checkout()
    {
        let od = orders()
        od.displayfinal()
        
    }
}
