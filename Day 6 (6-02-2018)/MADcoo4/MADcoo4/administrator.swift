//
//  administrator.swift
//  MADcoo4
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class administrator : user
    
{
    var adminname :String?
    var email : String?
    
  override init()
  {
    super.init()
    adminname = ""
    email = ""
    
    }
    
    init(id : String, pass : String, ustatus : String, name : String, mail : String)
    {
        super.init(uid: id, pwd: pass, ustatus: ustatus)
        self.adminname = name
        self.email = mail
    }

    func updatecatalog() -> Bool
    {
        return true
    }
}
