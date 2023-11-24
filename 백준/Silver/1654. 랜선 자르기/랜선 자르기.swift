import Foundation

let KN = readLine()!.split(separator: " ").map{ Int($0)! }
let (K, N) = (KN[0], KN[1])

var lines = [Int]()

for _ in 0..<K {
    lines.append(Int(readLine()!)!)
}

var first = 1
var last = lines.max()!

var result = 0

while first <= last {
    let mid = (first + last) / 2
    var tmp = 0
    
    for i in lines {
        tmp += i / mid
    }
    
    if tmp >= N {
        if result < mid {
            result = mid
        }
        first = mid + 1
    } else {
        last = mid - 1
    }
}

print(result)