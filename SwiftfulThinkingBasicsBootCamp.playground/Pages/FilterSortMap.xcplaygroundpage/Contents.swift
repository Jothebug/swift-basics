import Foundation

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: "Emily", isPremium: false, order: 1),
    DatabaseUser(name: "Samatha", isPremium: true, order: 8),
    DatabaseUser(name: "Joe", isPremium: true, order: 5),
]

//var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
//    if user.isPremium {
//        return true
//    }
//    return false
//}

var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    user.isPremium
}

var allPremiumUsers2: [DatabaseUser] = allUsers.filter({$0.isPremium})
//print(allPremiumUsers2)

//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}
//print(allPremiumUsers)

var orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}

var orderUsers2: [DatabaseUser] = allUsers.sorted(by: {$0.order < $1.order})

//print(orderedUsers, orderUsers2)


var userName: [String] = allUsers.map { user in
    return user.name
}

var userName2: [String] = allUsers.map({$0.name})

print(userName, userName2)
