import Foundation

var arr = [Int]()

let M = Int(readLine()!)!
let N = Int(readLine()!)!

for i in 1...100 {
    let num = Int(pow(Double(i), 2))
    if num <= N && num >= M {
        arr.append(num)
    }
    if num > N {
        break
    }
}

if arr.isEmpty {
    print("-1")
} else {
    print(arr.reduce(0, +))
    print(arr.min()!)
}