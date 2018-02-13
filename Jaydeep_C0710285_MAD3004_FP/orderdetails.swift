//
//  orderdetails.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//
import Foundation

class orderdetails : orders
{
    // var orderid : Int
    var productid : Int
    var productname : String
    var quantity : Int
    var unicost : Int
    var subtotal : Int
    var avai : Int
   
   
   // let od = orders()
    
    override init()
    {
        // self.orderid = 0
        self.productid = 0
        self.productname = ""
        self.quantity = 0
        self.unicost = 0
        self.subtotal = 0
        self.avai = 0
        super.init()
    }
    
    init(productid : Int,productname : String,quantity : Int,unicost : Int,subtotal : Int,avai : Int,orderid: Int, datecreated: Date, dateshipped: Date, customerid: Int, status: String, shippingid: String, customername: String, custadd: String, custemail: String, password: String, custccinfo: String, custshipinfo: String, userid: String, pwd: String, loginstatus: String, id: String)
    {
        self.productid = productid
        self.productname = productname
        self.quantity = quantity
        self.unicost = unicost
        self.subtotal = subtotal
        self.avai = avai
        super.init(orderid: orderid, datecreated: datecreated, dateshipped: dateshipped, customerid: customerid, status: status, shippingid: shippingid, customername: customername, custadd: custadd, custemail: custemail, password: password, custccinfo: custccinfo, custshipinfo: custshipinfo, userid: userid, pwd: pwd, loginstatus: loginstatus, id: id)
    }
    
    func order()
    {
        print("Select Product from catalog\n")
        print("1) Computer (Price:$500) Available : 5")
        print("2) Laptop (Price:$600) Available : 6")
        print("3) T.V. (Price:$300) Available : 2")
        print("4) Refrigerator (Price:$550) Available : 9")
        print("5) Camera (Price:$100) Available : 6")
        
    
        
        let od = Int(readLine()!)
        if od == 1
        {
            super.orderid = 1
            productid = 1
            productname = "Computer"
            avai = 5
            print("Selected Item is : Computer 🖨\n")
            quan()
            unicost = 500
            print("Cost/Unit is : \(unicost)\n")
            total()
        }
        else if od == 2
        {
            super.orderid = 2
            productid = 2
            productname = "Laptop"
            avai = 6
            print("Selected Item is : Laptop 💻\n")
            quan()
            unicost = 600
            print("Cost/Unit is : \(unicost)\n")
            total()
        }
        else if od == 3
        {
            super.orderid = 3
            productid = 3
            productname = "T.V."
             avai = 2
            print("Selected Item is : T.V. 🖥\n")
            quan()
            unicost = 300
            print("Cost/Unit is : \(unicost)\n")
            total()
        }
        else if od == 4
        {
            super.orderid = 4
            productid = 4
            productname = "Refrigerator"
             avai = 9
            print("Selected Item is : Refrigerator\n")
            quan()
            unicost = 550
            print("Cost/Unit is : \(unicost)\n")
            total()
        }
        else if od == 5
        {
            super.orderid = 5
            productid = 5
            productname = "Camera"
             avai = 6
            print("Selected Item is : Camera 📷\n")
            quan()
            unicost = 100
            print("Cost/Unit is : \(unicost)\n")
            total()
        }
    }
    
    
    func quan()
    {
        print("Insert Quantity")
        quantity = Int(readLine()!)!
        checkquan()
        
    }
    
    func checkquan()
    {
        
       var ava : Int
      //  ava = Int(readLine()!)!
        ava = avai - quantity
        if ava <= -1
        {
            print("***** Sorry! There are only \(avai) \(productname) available *****")
            print("Please select quantity less than or equal to \(avai)\n")
            quan()
        }
    }
    
    func total()
    {
        let sh = shippinginfo()
        print("Total Amount : ")
        subtotal = unicost * quantity
        print("Your Selected Item")
        print("Product : \(productname)")
        print("Quantity : \(quantity)")
        print("Cost : \(unicost)")
        print("Total Cost : \(unicost) * \(quantity) = \(subtotal)\n")
        print("Order Placed\n")
        print("Press 1 to Confirm order")
        print("Press 2 to Update quantity")
        let choose = Int(readLine()!)
        if choose == 1
        {
           // od.status = "Approved"
            //super.status = "Approved"
            //super.datecreated = "00/00/00"
            sh.shipping(t : subtotal)
        }
            
        else if choose == 2
        {
            //print("Wrong Number")
            quan()
            total()
        }
    }
    
    func Cat()
    {
        print("Available Products\n")
        print("1) Computer (Price:$500)  Available : 5")
        print("2) Laptop (Price:$600)  Available : 6")
        print("3) T.V. (Price:$300)  Available : 2")
        print("4) Refrigerator (Price:$550)  Available : 9")
        print("5) Camera (Price:$100)  Available : 6")
    }
}
