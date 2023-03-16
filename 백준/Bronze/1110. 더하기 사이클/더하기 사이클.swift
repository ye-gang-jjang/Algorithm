import Foundation

let N = Int(readLine()!)!

var count = 0
var newN = N

repeat {
    let left = newN / 10
    let right = newN % 10
    let sum = left + right
    
    newN = right * 10 + sum % 10
    count += 1
} while(N != newN)
print(count)