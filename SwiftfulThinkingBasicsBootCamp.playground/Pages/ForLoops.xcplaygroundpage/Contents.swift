import Foundation

//for item in 0..<10 {
//    print(item)
//}

let myArray: [String] = ["Alpha", "Beta", "Gamma", "Delta"]
for item in myArray {
//    print(item)
}

struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLessons: [LessonModel] = [
    LessonModel(title: "1", isFavorite: true),
    LessonModel(title: "2", isFavorite: false),
    LessonModel(title: "3", isFavorite: false),
    LessonModel(title: "4", isFavorite: true),
]

var favoriteLessons: [LessonModel] = []
for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}

//print(favoriteLessons)

for (index, lesson) in allLessons.enumerated() {
    if index == 1 {
//        break
        continue
    }
    
    print("index: \(index), lesson: \(lesson)")
}
