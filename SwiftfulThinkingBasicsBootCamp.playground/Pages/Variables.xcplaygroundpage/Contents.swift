import Foundation

// this is constant
let someConstant: Bool = false

//this is variable
var someVariable: Bool = true

// if statements
var userIsPremium: Bool = false

if userIsPremium == true {
    print("1 - user is premium")
}

if userIsPremium {
    print("2 - user is premium")
}

if(userIsPremium == false) {
    print("3 - user is not premium")
}

if !userIsPremium {
    print("4 - user is not premium")
}
