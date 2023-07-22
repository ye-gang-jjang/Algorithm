import Foundation

let T = Int(readLine()!)!
var isPrime = Array(repeating: true, count: 1_000_001)
isPrime[0] = false
isPrime[1] = false

for num in 2...Int(sqrt(Double(1_000_000))+1) {
    if isPrime[num] {
        var multiple = num * num
        
        while multiple <= 1_000_000 {
            isPrime[multiple] = false
            multiple += num
        }
    }
}

for _ in 0..<T {
    let N = Int(readLine()!)!
    var result = 0

    for i in 1...N/2 {
        if isPrime[i] && isPrime[N-i] {
            result += 1
        }
    }
    print(result)
}