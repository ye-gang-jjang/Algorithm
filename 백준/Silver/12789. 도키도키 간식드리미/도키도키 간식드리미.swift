import Foundation

let N = Int(readLine()!)!
var student = Array(readLine()!.split(separator: " ").map { Int($0)! }.reversed())

var stack = [Int]()
var now = 1

while !student.isEmpty {
    let person = student.popLast()!
    
    if person == now {
        now += 1
        
        while !stack.isEmpty && stack.last! == now {
            _ = stack.popLast()!
            now += 1
        }
    } else {
        stack.append(person)
    }
}

print(stack.isEmpty ? "Nice" : "Sad")