let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int($0)! }
var sum = input.reduce(0, +)
var result = 0

for i in input {
    sum -= i
    result += sum * i
}

print(result)