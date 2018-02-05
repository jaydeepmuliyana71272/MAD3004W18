//
//  shopping cart.swift
//  MADcoo4
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class shoppingcart : customer
 {
    var cartid : Int?
    var productid : Int?
    var quantity : Int?
    var dateadded : Int?
    
    
    override init ()
    {
        super.init()
        self.cartid = 0
        self.productid = 0
        self.quantity = 0
        self.dateadded = 0
    }
    
    init (uid: String, pwd: String, ustatus: String, name: String, add: String, e_mail: String, ccinfo: String, shipinfo: String,cid : Int, pid : Int, qun : Int, dateadd : Int)
    {
        super.init(uid: uid, pwd: pwd, ustatus: ustatus, name: name, add: add, e_mail: e_mail, ccinfo: ccinfo, shipinfo: shipinfo)
        self.cartid = cid
        self.productid = pid
        self.quantity = qun
        self.dateadded = dateadd
    }
    
    func addcartitem()
    {
        
    }
    
    func updatequantity()
    {
        
    }
    
    func viewcartdetails()
    {
        
    }
    
    func checkout()
    {
        
    }
    
}
