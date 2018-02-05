//
//  customer.swift
//  MADcoo4
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class customer : user{
    var customername : String?
    var address : String?
    var e_mail : String?
    var creditcardinfo : String?
    var shippinginfo : String?
    
    override init()
    {
        super.init()
        self.customername = ""
        self.address = ""
        self.e_mail = ""
        self.creditcardinfo = ""
        self.shippinginfo = ""
        
        
    }
    
    init (uid : String, pwd : String, ustatus : String, name : String, add : String, e_mail : String, ccinfo : String, shipinfo : String)
    {
        super.init(uid: uid, pwd: pwd, ustatus: ustatus)
        self.customername = name
        self.address = add
        self.e_mail = e_mail
        self.creditcardinfo = ccinfo
        self.shippinginfo = shipinfo
    }
    
    
    func register ()
    {
       
    }
    
    
    func login()
    {
        
    }
    
    func updateprofile()
    {
        
    }

  
   
}
