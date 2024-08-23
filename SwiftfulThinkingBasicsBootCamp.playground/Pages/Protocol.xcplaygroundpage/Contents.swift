import Foundation

struct Employee: EmployeeHasName {
    let title: String
    let name: String
}

protocol EmployeeHasName {
    let name: String
}
