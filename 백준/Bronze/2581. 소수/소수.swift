func isPrime(_ num: Int) -> Bool {
    if num < 2 { return false }
    if num == 2 || num == 3 { return true }
    if num % 2 == 0 || num % 3 == 0 { return false }
    var i = 5
    while i * i <= num {
        if num % i == 0 || num % (i + 2) == 0 {
            return false
        }
        i += 6
    }
    return true
}

let m = Int(readLine()!)!
let n = Int(readLine()!)!
var sum = 0
var minPrime = Int.max
var primeCount = 0
for i in m...n {
    if isPrime(i) {
        sum += i
        minPrime = min(minPrime, i)
        primeCount += 1
    }
}
if primeCount == 0 {
    print("-1")
} else {
    print(sum)
    print(minPrime)
}
