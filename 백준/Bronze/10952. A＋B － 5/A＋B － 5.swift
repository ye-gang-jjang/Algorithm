import Foundation

while true {
    let input = readLine()!.split(separator: " ")
    let A = Int(input[0])!
    let B = Int(input[1])!
    if(A == 0 && B == 0) {
        break
    }
    print("\(A+B)")
}