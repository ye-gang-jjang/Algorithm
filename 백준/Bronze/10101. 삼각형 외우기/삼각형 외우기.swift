import Foundation

var setArr = Set<Int>()
var numberSum = 0

for _ in 0..<3 {
    let N = Int(readLine()!)!
    setArr.insert(N)
    numberSum += N
}

if setArr.count == 3 && numberSum == 180 {
    print("Scalene")
} else if setArr.count == 2 && numberSum == 180 {
    print("Isosceles")
} else if setArr.count == 1 && numberSum == 180 {
    print("Equilateral")
} else {
    print("Error")
}