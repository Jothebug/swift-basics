import Foundation

struct MovieModel {
    let title: String
    let genre: MovieGenre
//    private(set) var isFavorite: Bool
    
    let isFavorite: Bool
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
//    mutating func updateFavoriteStatus2(newValue: Bool) {
//        isFavorite = newValue
//    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    
    // public
    var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // private "cannot access"
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // read is public, set is private
    private(set) var movie3 = MovieModel(title: "Avenger", genre: .action, isFavorite: false)
    
//    func updateMovie3(isFavorite: Bool) {
//        movie3.updateFavoriteStatus2(newValue: isFavorite)
//    }
}

let manager = MovieManager()

//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
//manager.movie1.updateFavoriteStatus(newValue: true)
//manager.movie1.updateFavoriteStatus2(newValue: true)

//manager.updateMovie3(isFavorite: true)
//print(manager.movie3)

// version 1
// we can GET and SET the value from outside the object
// too public
let movie = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)


// Note: private & public are by far the most common but there are many others
// open
// public
// internal
// fileprivate
// private
