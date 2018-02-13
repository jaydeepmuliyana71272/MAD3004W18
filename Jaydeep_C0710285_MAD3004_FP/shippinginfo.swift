//
//  shippinginfo.swift
//  mad004
//
//  Created by MacStudent on 2018-02-10.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class shippinginfo : orders
{
    var shippingtype : String
    var shippingcost : Int
    var shippingregionid : Int
    //let st = "Approved"
    //let sid = "1"
   
   // var fp : Int
    override init()
        
    {
        
        // shippingid = 0
        shippingtype = ""
        shippingcost = 0
        shippingregionid = 0
       // fp = 0
        super.init()
    }
    
    init(shippingtype : String, shippingcost : Int, shippingregionid : Int, orderid: Int, datecreated: Date, dateshipped: Date, customerid: Int, status: String, shippingid: String, customername: String, custadd: String, custemail: String, password: String, custccinfo: String, custshipinfo: String, userid: String, pwd: String, loginstatus: String, id: String)
    {
        self.shippingtype = shippingtype
        self.shippingcost = shippingcost
        self.shippingregionid = shippingregionid
        super.init(orderid: orderid, datecreated: datecreated, dateshipped: dateshipped, customerid: customerid, status: status, shippingid: shippingid, customername: customername, custadd: custadd, custemail: custemail, password: password, custccinfo: custccinfo, custshipinfo: custshipinfo, userid: userid, pwd: pwd, loginstatus: loginstatus, id: id)
    }
    
    func shipping(t : Int)
    {
        var fp : Int
       // let od = orders()
        //let odt = orderdetails()
        print("Select Type of Pyment : \n")
        print("1) Cash On Delivery")
        print("2) Online Payment")
        
       
        
        let typ = Int(readLine()!)
        if typ == 1
        {
            print("Selected Type is : Cash On Delivery")
            shippingcost = 25
            print("Shipping Cost : \(shippingcost)")
            fp = t + shippingcost
            print("Final Price : Total : \(t) + Shippingcost : \(shippingcost) = \(fp)\n")
            region()
        }
        else if typ == 2
        {
            print("Selectd type is : Online Payment")
            shippingcost = 0
            print("Shipping Cost : \(shippingcost)")
            fp = t + shippingcost
            print("Final Price : Total : \(t) + Shippingcost : \(shippingcost) = \(fp)\n")
            //super.shippingid = "2"
            region()
        }
    }
    
    func region()
    {
       // let od = orders()
        print("Insert Region ID : ")
        shippingregionid = Int(readLine()!)!
        let sh = shoppingcart()
        sh.cartdetails()
        //od.display()
        //od.display(status : self.st, shipid : self.sid)
    }
}
