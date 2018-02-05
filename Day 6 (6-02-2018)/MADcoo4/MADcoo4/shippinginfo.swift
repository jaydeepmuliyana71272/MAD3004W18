//
//  shipping info.swift
//  MADcoo4
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class shippinginfo : orders
{
   // var shippingid : Int?
    var shippingtype : String?
    var shippingcost : Int?
    var shippingregionid : Int?
  
    override init()
    
    {
        super.init()
       // shippingid = 0
        shippingtype = ""
        shippingcost = 0
        shippingregionid = 0
    }
    
    init(uid: String, pwd: String, ustatus: String, name: String, add: String, e_mail: String, ccinfo: String, shipinfo: String, oid: Int, datecreate: String, dateship: String, cid: Int, status: String, sid : String, stype : String, scost : Int, srid : Int)
    {
        super.init(uid: uid, pwd: pwd, ustatus: ustatus, name: name, add: add, e_mail: e_mail, ccinfo: ccinfo, shipinfo: shipinfo, oid: oid, datecreate: datecreate, dateship: dateship, cid: cid, status: status, sid : sid)
  //  self.shippingid = sid
    self.shippingtype = stype
    self.shippingcost = scost
    self.shippingregionid = srid
    }
   
    func updateshippinginfo()
    {
        
    }
}


