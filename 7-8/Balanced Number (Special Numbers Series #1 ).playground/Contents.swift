import UIKit

// Balanced Number (Special Numbers Series #1 ). Swift.

func balancedNumber(_ number: Int) -> String {
    var returnString = "Balanced"
    let countInt = String(number).count
    
    if countInt < 2 { return returnString }
    
    let intNumberArray: [Int] = String(number).compactMap{ $0.wholeNumberValue }
    let midIndex: Int = countInt % 2 == 0 ? (countInt / 2) - 1 : (countInt / 2)
    
    let sumLeftSide = intNumberArray.prefix(midIndex).reduce(0, +)
    let sumRightSide = intNumberArray.suffix(midIndex).reduce(0, +)
    
    returnString = sumLeftSide != sumRightSide ? "Not Balanced" : "Balanced"
    return returnString
}

//func balancedNumber(_ number: Int) -> String {
//    var returnString = "Balanced"
//    let countInt = String(number).count
//
//    if countInt == 1 || countInt == 2 { return returnString }
//
//    let intArray = String(number).compactMap{Int(String($0))}
//    let midIndex = countInt / 2
//    var checkIndex = 0
//
//    var sumLeftSide = 0
//    var sumRightSide = 0
//
//    if countInt % 2 == 0 {
//        for i in intArray {
//            if checkIndex < (midIndex - 1) {
//                sumLeftSide += i
//            } else if checkIndex > midIndex {
//                sumRightSide += i
//            }
//            checkIndex += 1
//        }
//    } else {
//        for i in intArray {
//            if checkIndex < midIndex {
//                sumLeftSide += i
//            } else if checkIndex > midIndex {
//                sumRightSide += i
//            }
//            checkIndex += 1
//        }
//    }
//
//    returnString = sumLeftSide != sumRightSide ? "Not Balanced" : "Balanced"
//    return returnString
//}


