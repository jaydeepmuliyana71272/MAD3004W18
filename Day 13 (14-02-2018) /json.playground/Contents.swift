//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class tutorial : Codable
{
    let title : String
    let author : String
    let editor : String
    let type : String
    let publishdate : Date
    
    init(title : String, author : String, editor : String, type : String, publishdate : Date)
    {
        self.title = title
        self.author = author
        self.editor = editor
        self.type = type
        self.publishdate = publishdate
    }
}

let tutorial = tutorial(title : "swift", author : "Cosmin", tutorial : "PPPPP", editor : "Simon", type : "swift", publishdate : Date())

//encoding
let encoder = JSONEncoder()
let data = try encoder.encode(tutorial)
let jsonstring = String(data: data, encoding: .utf8)

print(jsonstring ?? "")

//decoding
let decoder = JSONDecoder()
let article = try decoder.decode(tutorial.self, from: data)
let info = "\(article.title) \(article.author) \(article.editor) \(article.type) \(article.publishdate)"

print(info)
