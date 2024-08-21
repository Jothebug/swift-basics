import Foundation


// There is always a value and it is a Boolean
let myBool: Bool = false

// I don't know if there is a value, but if there is, it is a Boolean
var myOtherBool: Bool? = false

//print(myOtherBook)
//myOtherBook = true
//print(myOtherBook)
//myOtherBook = false
//print(myOtherBook)

// nill coalescing operator

//let newValue: Bool? = myOtherBool
//let newValue2: Bool = myOtherBool ?? true
//print("New value 2: \(newValue2)")

var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool {
    return userIsPremium ?? false
}
let isPremium = checkIfUserIsPremium()

// If-let
// When if-let is successful, enter the closure
func checkIfUserIsPremium3() -> Bool {
    // If there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here have access to the on-optional value
        return newValue
    } else {
        return false
    }
}

func checkIfUserIsPremium4() -> Bool {
    if let newValue = userIsPremium {
        return newValue
    }
    return false
}

func checkIfUserIsPremium5() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    return false
}


// Guard
// When a guard is a failure, enter the closure
func checkIfUserIsPremium6() -> Bool {
    // Make sure there is a value
    // If there is, let newValue equal that value
    // Else (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    return newValue
}

func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}

var userIsNew: Bool? = true
var userDidCompleteOnBoarding: Bool? = true
var userFavoriteMovie: Bool? = true

func checkIfUserIsSetUp() -> Bool {
    if let isNew = userIsNew, let didCompleteOnBoarding = userDidCompleteOnBoarding, let favoriteMovie = userFavoriteMovie {
        return getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: didCompleteOnBoarding, userFavoriteMovie: favoriteMovie)
    }
    return false
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: Bool) -> Bool {
    if userIsNew && userDidCompleteOnboarding && userFavoriteMovie {
        return true
    }
    return false
}

// layer guard
func checkIfUserIsSetUp2() -> Bool {
    guard let userIsNew else {
        return false
    }
    
    guard let userDidCompleteOnBoarding else {
        return false
    }
    
    guard let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnBoarding, userFavoriteMovie: userFavoriteMovie)
}

let result = checkIfUserIsSetUp2()
print(result)

// Optional chaining

func getUserName() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    
    // I will get the count if the username is not nil
    let username: String? = getUserName()
    let count: Int = username?.count ?? 0
    let count3: Int = username!.count
    
    let title: String = getTitle()
    let count2 = title.count
    
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    
}
