import Foundation


var fruitsArray: [String] = ["Apple", "Banana", "Apple", "Orange"]
print(fruitsArray)
if fruitsArray.indices.contains(1) {
    let item  = fruitsArray[1]
}

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

var myFirstDictionary: [String: Bool] = [
    "Apple": true,
    "Orange": false,
    "Banana": true
]
let item = myFirstDictionary["Orange"]
 
var anotherDictionary: [String: String] = [
    "abc": "apple",
    "cde": "orange"
]
let selectItem = anotherDictionary["abc"]
anotherDictionary["xyz"] = "mango"

anotherDictionary.removeValue(forKey: "abc")

//print(anotherDictionary)

struct PostModal {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModal] = [
    PostModal(id:"123", title: "post1", likeCount: 3),
    PostModal(id:"234", title: "post2", likeCount: 5),
    PostModal(id:"345", title: "post3", likeCount: 8),
]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

var postDict: [String: PostModal] = [
    "123": PostModal(id:"123", title: "post1", likeCount: 3),
    "124": PostModal(id:"234", title: "post2", likeCount: 5),
    "125": PostModal(id:"345", title: "post3", likeCount: 8),
]

let myNewItem = postDict["abc"]

