//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Multiple Stirng

print(str)
let strOne = """
This is First line
This is another line
This is one more line
Ok. Enough of lines
"""
print(strOne)

var mood = ""
let heart = "\u{1F929}"    //Uni code 1F496-Heart 1F920-Smile
mood = "happy"
if mood.isEmpty
{
    print("cheer up")
}

else{
    print(heart)
}

mood += "cheerful joyful"
print(mood)

//heart += "Be Happy"

var firstname = String()
firstname="Jaydeep"
print(firstname)

for  i in firstname
{
    print(i)
}

//attatch string

let initial : Character = "J" //character is used to define character not char
firstname.append(initial)  //append is used to attatch two string
print(firstname)

//to count the characters of string

print("Firstname is \(firstname) which is \(firstname.count) charaters long.")

firstname.append("Jaydeep")
print(firstname)

//Fond the index of character

print("start Index:",firstname[firstname.startIndex])  //First Index (First Character)
//print("End Index:",firstname[firstname.endIndex])     //End Index (Last Character) it will print NULL
print("Before End Index:",firstname[firstname.index(before: firstname.endIndex)]) //Before End Index
print("After First Index:",firstname[firstname.index(after: firstname.startIndex)])  //After First Index
print("5th Character:",firstname[firstname.index(firstname.startIndex,offsetBy : 4)])  //Find character



var idx = firstname.index(firstname.startIndex,offsetBy : 3)
print("Fourth Character:",firstname[idx])



print("6th Charater",firstname[firstname.index(firstname.startIndex,offsetBy : 5)])

var n="Jaydeep"

//Name in reverse order class Activity

print("Name is \(n.count) character long.")

for i in stride(from: 0, to: n.count, by: 1)
{
    print(n[n.index(n.startIndex,offsetBy : i)])
}

for i in stride(from: n.count-1, to: -1, by: -1)
{
    print(n[n.index(n.startIndex,offsetBy : i)])
}


var language = "Swift"
print("Language : ",language)

//insert in string
language.insert("!",at : language.endIndex)
print("language:",language)

//insert in string
language.insert(contentsOf:"Java", at: language.endIndex)
print("Language:",language)

//insert in string at position
language.insert(contentsOf:"is nice than", at : language.index(language.startIndex,offsetBy : 6))
print("language Contents OF:",language)

//remove from string
language.remove(at:language.index(before: language.endIndex))
print("language remove:",language)

let range = language.startIndex..<language.endIndex
language.removeSubrange(range)
print("language remove sub range:",language)

let greeting = "Happy Holidays"
let index = greeting.index(of:" ") ?? greeting.endIndex
let start = greeting[..<index]
let newgreet = String(start)
print("Sub String:",newgreet)


//to convert string into uppercase
print("String in Uppercase:",newgreet.uppercased())

//to compare string
if (newgreet == newgreet.uppercased())
{
    print("Equal")
}
else{
    print("not equal")
}

//grade (check null value)
var grade : String?
//grade = "A"
let finalgrade = grade ?? "F"

if (finalgrade.isEmpty)
{
    print("Not Graded")
}

else
{
    print("Grade:",finalgrade)
}

//array
var a  = [10,20,30,40,50]
print("a[0]: \(a[0])")





