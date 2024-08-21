
import Foundation

//func myFirstFunction() {
//    print("my FIRST function")
//    mySecondFunction()
//    myThirdFunction()
//}
//
//func mySecondFunction() {
//    print("my SECOND function")
//}
//
//func myThirdFunction(){
//    print("my THIRD function")
//}
//
//myFirstFunction()

// Return func
//func myName() -> String {
//    let name: String = "Josephine"
//    return name
//}
//
//let name = myName()
//print(name)

showFirstScreen()

func showFirstScreen() {
    var userDidCompleteOnBoarding: Bool = true
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnBoarding, profileCreated: userProfileIsCreated)
    if status {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

func checkUserStatus(didCompleteOnboarding: Bool, profileCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileCreated {
        return true
    } else {
        return false
    }
}

func doSomething() -> String {
    var title: String = "Avengers"
    
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
}
print(doSomethingElse())
func doSomethingElse() -> String {
    var title: String = "Avengers"
    guard title == "Avengers" else {
        return "Not Marvel"
    }
    return "Marvel"
}

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

let result1 = calculateNumbers()
//print(result1)

var calculatedNumber: Int {
    return number1 + number2
}
print(calculatedNumber)
