import Foundation

let T = Int(readLine()!)!

for i in 1...T {
    let input = readLine()!.split(separator: " ")
    let A = Int(input[0])!
    let B = Int(input[1])!
    
    print("Case #\(i): \(A+B)")
}
