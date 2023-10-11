import Foundation

var maxNum = 0
var people = 0

for i in 1...5 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
    
    if maxNum < input {
        maxNum = input
        people = i
    }
}

print("\(people) \(maxNum)")