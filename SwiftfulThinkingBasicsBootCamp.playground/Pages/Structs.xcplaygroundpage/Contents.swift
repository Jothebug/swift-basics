import Foundation
 /*
  Structs are fast!
  Structs are stored in the Stack (memory)
  Objecs in the Stack are Value types
  Value types are copied & mutated
*/

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an impicit init
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
}

let myObject: String = "Hello, world!"
let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now, isPremium: false)
//print(myQuiz)

let myQuiz1: Quiz = Quiz.init(title: "Quiz 2", dateCreated: nil, isPremium: nil)
//print(myQuiz1)

// _______________________________________________
 
// Immuatable struct = all "let" constants = NOT mutable = "cannot muatate it"
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Nick", isPremium: false)

func markUserAsPremium() {
    print(user1)
    
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}
//markUserAsPremium()

// _______________________________________________

// mutable struct
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Josephine", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    user2.isPremium = true
    print(user2)
}
//markUserAsPremium2()

// _______________________________________________
// immuatable struct

struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
}

var user3 = UserModel3(name: "Jothebug", isPremium: false)
user3 = user3.markUserAsPremium(newValue: true)
//print(user3)

// _______________________________________________
// mutable struc

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4: UserModel4 = UserModel4(name:"Jothebug1", isPremium: false)
print(user4)
user4.updateIsPremium(newValue: true)
print(user4)
