import Foundation

let input = Int(readLine()!)!

for i in 1...input {
    
    for _ in 0..<input-i {
        print(" ", terminator: "")
    }
    
    for _ in 0..<i {
        print("*", terminator: "")
    }
    
    print(" ")
}
