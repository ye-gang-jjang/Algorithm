import Foundation

let N = Int(readLine()!)!

var arr = Array(1...N)
var result = [Int]()

while(arr.count != 1) {
    result.append(arr.removeFirst())
    
    arr.append(arr.removeFirst())
}
result.append(arr[0])

print(result.map{ String($0) }.joined(separator: " "))