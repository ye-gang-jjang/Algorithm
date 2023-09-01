let NK = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NK[0], K = NK[1]

var numbers = Array(1...N)
var result = [Int]()
var cnt = 0

while(!numbers.isEmpty) {
    cnt = (cnt + K-1) % numbers.count
    result.append(numbers[cnt])
    numbers.remove(at: cnt)
}

print("<\(result.map{String($0)}.joined(separator: ", "))>")