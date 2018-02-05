//
//  ordersdetails.swift
//  MADcoo4
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class ordersdetails : orders
{
   // var orderid : Int?
    var productid : Int?
    var productname : String?
    var quantity : Int?
    var unicost : Float?
    var subtotal : Float?
    
    override init()
    {
        super.init()
   // self.orderid = 0
    self.productid = 0
    self.productname = ""
    self.quantity = 0
    self.unicost = 0
    self.subtotal = 0
    }
    
    init(uid: String, pwd: String, ustatus: String, name: String, add: String, e_mail: String, ccinfo: String, shipinfo: String, oid: Int, datecreate: String, dateship: String, cid: Int, status: String, sid: String, prid : Int, prname : String, qua : Int, unic : Float, stotal : Float)
    {
        super.init(uid: uid, pwd: pwd, ustatus: ustatus, name: name, add: add, e_mail: e_mail, ccinfo: ccinfo, shipinfo: shipinfo, oid: oid, datecreate: datecreate, dateship: dateship, cid: cid, status: status, sid: sid)
       // self.orderid = odid
        self.productid = prid
        self.productname = prname
        self.quantity = qua
        self.unicost = unic
        self.subtotal = stotal
    }
    
    func calcprice()
    {
        
    }
    
}
