
import Foundation

/*
 During the life the aoo, we create and destroy objects
 Create = Initialize (init) = Allocate (add to memory)
 Destroy = Deinitialize (deinit) = Deallocate (remove from memory)
 
 Automatic Reference Counting (ARC)
 A live count of the number of objects in memory
 Create 1 object, count goes up by 1
 Create 2 objects, count goes up by 2
 Destroy 1 object, count goes down by 1
 
 The more objects in memory, the slower the app performs
 We want to keep the ARC count as low as possible
 And destroy them as soon as we no longer need them
 
 For example, if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it. (ie. When the user clicks a button to segue to screen 2). When we get to screen 2, we may want to deallocate screen 1
 
 There are 2 types of Memory: Stack & Heap
 Only objects in the Heap are counted towards ARC
 
 https://www.youtube.com/watch?v=-JLenSTKEcA
 
 Objects in the Stack
 String, Bool, Int, most basic types
 NEW:  Struct, Enum, Array
 
 Objects in the Heap -> Only objects in the Heap are counted towards ARC
 Functions
 NEW: Class, Actors
 
 Iphone is a multi-threaded enviroment
 There are multiple threads or engines running simultaneously (at the same time)
 Each threads has a stack
 But there is only 1 Heap for all threads
 
 Therefore:
 Stack is faster, lower memory footprint, preferable
 Head is lower, higher memory footprint, risk of threading issues
 
 Values vs Reference types
 
 Objects in the Stack are "Values" types
 When you edit a Value type, you create a copy of it with new data
 
 Objects in the Heap are "Reference" types
 When you edit a Reference type, you edit the object that you are referencing. This "reference" is called "pointer" because it "points" to an object in the Heap (in memory)
 

 */

struct MyFirstObject {
    let title: String = "Hello, world!"
}

class MySecondObject {
    let title: String = "Hello, world!"
}

// Class vs Struct explained to a 5-year old

/*
 Imagine a school and in the school there are classrooms.
 Within each class, there are quizzes.
 During the day, the teacher will hand out many different quizzes to different classes. The students will answer the quizzes and return them back to the teacher.
 
 "school" = App
 "classroom" = Class
 "quiz" = Struct
 
 In this example, we have a classroom and there are many actions that occur inside the classroom.
 In code, we create a class and can perform actions within the class.
 
 In this example, there are many different types of quizzes. The teacher hands out the quizzes and the students take the quizzes and return them to the teacher.
 In code, we create many structs and pass them around our app with ease.
 */

// Use a class for things like: "Manager", "DataService" "Service" "Factory" "ViewModel"
// Use a struc for things like: "Data models", Objects that create and pass around our app.
