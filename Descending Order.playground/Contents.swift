import UIKit

// Descending Order. Swift.

func descendingOrder(of number: Int) -> Int {
    return Int(String("\(number)".sorted(by: >)))!
}


