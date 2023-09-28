import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let A = input[0], I = input[1]

print(A*(I-1)+1)