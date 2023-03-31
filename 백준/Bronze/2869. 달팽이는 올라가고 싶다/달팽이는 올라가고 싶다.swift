import Foundation

let input = readLine()!.split(separator: " ").map { Double($0)! }

let A = input[0]
let B = input[1]
let V = input[2]
let day = ceil((V - B) / (A - B))

print(Int(day))