import Foundation

let n = Int(readLine()!)!
let c = Int(round(Double(n) * 0.15))

var arr = [Int]()
var result = 0.0

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

for i in c..<arr.count - c {
    result += Double(arr[i])
}

print(n > 0 ? Int(round(result / Double(n - c*2))) : 0)