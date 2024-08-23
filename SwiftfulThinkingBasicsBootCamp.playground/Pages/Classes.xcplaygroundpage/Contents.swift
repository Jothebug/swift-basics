import Foundation

// Classes are slow
// Classes are stored in the Heap (memory)
// Objects in the Heap are Reference type
// Reference types point to an object in memory and update the object in memory

// All the data needed for some screen
class ScreenViewModel {
    
    let title: String
    private(set) var showButton: Bool
    
    // Same init as a Struct, except struc has an implicit init
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
         // run as the object is being removed from memory
        // Structs do not have deinit
    }
    
    func updateShowButton(newValue: Bool){
        showButton = newValue
    }
}

// Notice that we are using a "let" because:
// the object itself is not changing
// the data inside the object is changing

let viewModal: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)

viewModal.updateShowButton(newValue: false)
//print(viewModal.showButton)
