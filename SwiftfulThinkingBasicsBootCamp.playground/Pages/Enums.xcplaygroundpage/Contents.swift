import Foundation

// Enum is the same as Struct except we know all cases at runtime

struct CarModel {
    let brand: CardBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

enum CardBrandOption {
    case ford, toyota, honda
    var title: String {
        switch self {
        case .ford: 
            return "Ford"
        case .honda:
            return "Honda"
        default:
            return "Default"
        }
    }
}

var car1: CarModel = CarModel(brand: .ford, model: "Fiesta")

var fordBrand: CardBrandOption = .ford
print(fordBrand.title)
