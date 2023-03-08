import Foundation

let X = Int(readLine()!)!
let N = Int(readLine()!)!

var sum = 0

for _ in 1...N {
    let input = readLine()!.split(separator: " ")
    let a = Int(input[0])!
    let b = Int(input[1])!
    
    sum += (a*b)
}
print(sum == X ? "Yes" : "No")
