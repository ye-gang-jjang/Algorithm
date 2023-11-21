import Foundation

let AB = readLine()!.split(separator: " ").map{ Int($0)! }
let A = AB[0], B = AB[1]
var result = [Int]()

var arrN = readLine()!.split(separator: " ").map{ Int($0)! }
var arrM = readLine()!.split(separator: " ").map{ Int($0)! }

for i in 0..<A {
    result.append(arrN[i])
    
}

for i in 0..<B {
    result.append(arrM[i])
}

result.sort()

print(result.map{ String($0) }.joined(separator: " "))