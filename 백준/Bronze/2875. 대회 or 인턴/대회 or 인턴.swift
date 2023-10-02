import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
var N = input[0], M = input[1], K = input[2]

for _ in 0..<K {
    (N/2 >= M) ? (N -= 1) : (M -= 1)
}

print("\(min(N/2, M))")