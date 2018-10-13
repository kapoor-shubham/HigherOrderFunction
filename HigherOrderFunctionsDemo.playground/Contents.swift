import UIKit



// Higher Order Function Demo

func addition(num1: Double, num2: Double) -> Double {
    return num1 + num2
}

func multiply(num1: Double, num2: Double) -> Double {
    return num1 * num2
}

// Passing function to another function

//  This is a higher order function which accepts three parameters. Two double values and a function of type (Double,Double)->Double
func doMath(operation: (_ x: Double, _ y: Double) -> Double, num1: Double, num2: Double) -> Double {
    return operation(num1, num2)
}

doMath(operation: multiply, num1: 10, num2: 2)
doMath(operation: addition, num1: 10, num2: 2)



//----------------------MAPS----------------------//

let integerArray = [2, 3, 4, 2, 5, 3, 7, 8, 9, 4]

let multipliedArray = integerArray.map { $0 * 10 }
print(multipliedArray)


let libraryBooks = ["harryPotter": 100.0, "jungleBook": 100.0]

let capitalisedBooksDict = libraryBooks.map{ (key, value) in
    return key.capitalized
}
print(capitalisedBooksDict)


let dummySet: Set = [2, 3, 4, 5, 6, 3, 5, 7, 9, 4, 3]
print(dummySet)

let updatedSet = dummySet.map{ $0 * 10 }
print(updatedSet)

