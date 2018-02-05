//
//  orders.swift
//  MADcoo4
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class orders : customer
{
    var orderid : Int?
    var datecreated : String?
    var dateshipped : String?
  //  var custname : String?
    var customerid : Int?
    var status : String?
    var shippingid : String?
    
    override init()
    {
        super.init()
        self.orderid = 0
        self.datecreated = ""
        self.dateshipped = ""
  //      self.custname = ""
        self.customerid = 0
        self.status = ""
        self.shippingid = ""
    }
    
    init(uid : String, pwd : String, ustatus : String, name : String, add : String, e_mail : String, ccinfo : String, shipinfo : String, oid : Int, datecreate : String, dateship : String, cid : Int, status : String, sid : String)
    {
        super.init(uid: uid, pwd: pwd, ustatus: ustatus, name: name, add: add, e_mail: e_mail, ccinfo: ccinfo, shipinfo: shipinfo)
    self.orderid = oid
    self.datecreated = datecreate
    self.dateshipped = dateship
  //  self.custname = name
    self.customerid = cid
    self.status = status
    self.shippingid = sid
        
   }
    
    func placeorder()
    {
        
    }
}
