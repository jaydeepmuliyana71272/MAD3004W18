//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Array declaration
var a = [10,20,30,40,50]
print("a[0] : \(a[0])")
print("a : ",a)

let j1 = [10,20]
print("j1 : ",j1)

//add value
var b = [Int]();
print("Size of Array B: \(b.count)")  // count value in array same as string
b.append(100)  // add value in array
print("b[0] : \(b[0])")

b.append(1000)
print("b : ",b)
b[0]=1000
print("b[0]:\(b[0])")

/* index out of range error
b[2] = 500
print("b:",b)
print("size of array B: \(b.count)*)
b.append(100)
*/

//assign default value
var num1 = [Int] (repeating : 1, count : 3)   //repeating is used to assign value
print("num1 array:\(num1)")                   // count is used for define how many time it should be repeat
var num2 = [Int] (repeating : 5, count : 3)
print("num2 array:\(num2)")
var nummerge = num1+num2      //merging array
print("NumMerge Array:\(nummerge)")


//declare to store any data types values
var c = [Any]();  // Any is used to define array of any type
print("Size of array : \(c.count)")
c.append(100)
c.append("Patel")
c.append(100.23)
print("C Array: \(c)")

var x = a[1...3]    // extract only 3 value
for t in x{
    print("X: \(t)")      // print using loop
}

//string array and for-each with key,value
var shoppinglist : [String] = ["eggs","milk"]
for (index,value) in shoppinglist.enumerated()     //enumerate value
{
    print("Item \(index): \(value)")
}


print("The shopping list contains \(shoppinglist.count) items.")
if shoppinglist.isEmpty
{
    print("The SHopping list is emoty")
}
else
{
    print("The shopping list is not empty")
}

shoppinglist.append("Flour")      // adding value in array
print("shoppinglist array : \(shoppinglist)")

shoppinglist += ["chocolate", "cheese", "butter"]    // adding multiple value in array
print("shopping List: \(shoppinglist)")
shoppinglist.insert("Maple Syrup",at :0 )   //adding at specific position
let maplesyrup = shoppinglist.remove(at:2)    // remove from specific location
let apples = shoppinglist.removeLast()     // remove from last
print("SHopping List : \(shoppinglist)")


//set
//declaring set
var grades: Set<Character> = []    //write set and datatype in <>
grades.insert("A") //insert in set
grades.insert("B")
print("Grades: \(grades)")


//checking empty class activity
if grades.isEmpty
{
    print("Grade is Empty")
}
else{
    print("No.of Grade: \(grades.count)")
}

//require hash
//var gradetype:Set <Any> = []

var favoritegenres : Set<String> = ["Rock","Classical","Hip Hop"]
print("Favorite Genres : \(favoritegenres)")

print("I have \(favoritegenres.count) favorite music genres.")
if favoritegenres.isEmpty
{
    print("As far as music goes, I'm not picky")
}
else
{
    print("I have particular music preferences")
}
favoritegenres.insert("Jazz")   // insert value
print("Favorite Genres: \(favoritegenres)")

if let removedgenre =  favoritegenres.remove("Rock")   // remove value
{
    print("\(removedgenre)? I'm over it.")
}
else
{
    print("I never much cared for that")
}

print("favorite genres :\(favoritegenres)")
for genre in favoritegenres.sorted()  //to display in assending order
{
    print("\(genre)")
}

let odddigit : Set = [1,3,5,7,9]
let evendigit : Set = [0,2,4,6,8]
let singledigitprimenumber: Set = [2,3,5,7]

print(odddigit.union(evendigit).sorted())  // coneect both array
print(odddigit.intersection(evendigit).sorted())  //intersection
print(odddigit.subtracting(singledigitprimenumber).sorted())  //subtracting
print(odddigit.symmetricDifference(singledigitprimenumber).sorted())  //diference from both

let houseanimal: Set = ["🐥","🐶"]
let farmanimal: Set = ["🐮","🐃","🐶","🐥"]
let cityanimal: Set = ["🐶","🐒","🐥"]

print(houseanimal.isSubset(of: farmanimal))
print(farmanimal.isSuperset(of: houseanimal))   // contain all
print(farmanimal.isDisjoint(with: cityanimal))   // contain no same value

