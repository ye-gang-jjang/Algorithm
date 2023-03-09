let N = Int(readLine()!)!
let input = Array(readLine()!).map { Int(String($0))! }
let sum = input.reduce(0, +)

print(sum)