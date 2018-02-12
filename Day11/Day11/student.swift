//
//  student.swift
//  Day11
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class student
{
    var sname : String?
    
    init()
    {
        self.sname = "Student Name"
    }
    
    func setStudentName(sname: String)
    {
        self.sname = sname
    }
    
    func getStudentName() -> String
    {
        return self.sname!
    }
    
    private func display()
    {
        print("Private Method")
    }
    
    fileprivate func display (message : String)
    {
        print("Hello : \(message)")
    }
}

private class fulltime : student
{
    var subject : String?
    
    override init()
    {
        self.subject = "Fulltime"
    }
    
    private func setSubjectName (subject : String)
    {
        self.subject = subject
    }
    
    private func display()
    {
        print("Fulltime class")
        super.display (message : "File Private")
    }
}
