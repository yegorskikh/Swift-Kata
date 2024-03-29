import UIKit

// Mexican Wave

func wave(_ y: String) -> [String] {
    var wave = [String]()
    
    for i in y.indices {
        if !y[i].isWhitespace {
            wave.append(y[..<i] + y[i].uppercased() + y[y.index(after: i)...])
        }
    }
    
    return wave
}
