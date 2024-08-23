import Foundation

// Arrays, Sets

var myTitle: String = "Hello, world!"
var myTitle2: String = "Hello, world!!"

// Tuple

func doSomething(value: (title1: String, title2: String)) {
    
}

doSomething(value: (myTitle, myTitle2))

// Custom data model
struct TitleModel {
    let title1: String
    let title2: String
}
//func doSomething(value: TitleModel) {
//}
//doSomething(value: (myTitle, myTitle2))

// _______________________________

let apple: String = "Apple"
let orange: String = "Orange"

let fruits1: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
var fruits3: Array<String> = [apple, orange]

func doSomething(value: [String]) {}

let count = fruits1.count
let firstItem = fruits1.first
let secondItem = fruits3.last

fruits3 = fruits3 + ["Banana"]
print(fruits3)

fruits3.append("Mango")
print(fruits3)

fruits3.append(contentsOf: ["Cherry", "Jackfruit"])
print(fruits3)

print(fruits3[2])

let firstIndex = fruits3.indices.first
let lastIndex = fruits3.indices.last
print(firstIndex, lastIndex)

// check if index exists

if fruits3.indices.contains(2) {
    let item = fruits3[2]
    print(item)
}

fruits3.insert("Cucumber", at: 2)
print(fruits3)

fruits3.insert(contentsOf: ["Guava", "Watermelon"], at: 3)
print(fruits3)

fruits3.remove(at: 2)
print(fruits3)

if fruits3.indices.contains(100) {
    fruits3.remove(at: 100)
}

var fruitsSet: Set<String> = ["Apple", "Orange", "Cucumber", "Banana"]
print(fruitsSet)
