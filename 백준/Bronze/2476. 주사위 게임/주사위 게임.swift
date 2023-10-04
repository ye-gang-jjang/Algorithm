import Foundation

let N = Int(readLine()!)!
var money = 0

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (A, B, C) = (input[0], input[1], input[2])
    var result = 0
    
    if A == B && B == C {
        result += 10000+(A * 1000)
    } else if A != B && B != C && A != C {
        result += max(A, max(B, C)) * 100
    } else {
        if A == B || A == C {
            result += 1000 + (A * 100)
        } else {
            result += 1000 + (B * 100)
        }
    }
    
    if result > money {
        money = result
    }
}

print(money)