let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{ Int($0)! }
let v = Int(readLine()!)!
var count = 0

for i in 0..<N {
    if v == input[i] {
        count += 1
    }
}

print(count)