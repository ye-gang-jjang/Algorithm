import Foundation

let input = readLine()!.split(separator: " ").map{String($0)}
let (A, B) = (input[0], input[1])

var first = 0
var second = 0

for ch1 in A {
    first += Int(String(ch1))!
}

for ch2 in B {
    second += Int(String(ch2))!
}

print(first * second)