import Foundation

let mod = 1234567891

let L = Int(readLine()!)!
var input = Array(readLine()!).map { Int(exactly: $0.asciiValue!)! - 96 }

var result = 0
var pow = 1

for i in input {
    result += i * pow
    pow = (pow * 31) % mod
}

print(result % mod)