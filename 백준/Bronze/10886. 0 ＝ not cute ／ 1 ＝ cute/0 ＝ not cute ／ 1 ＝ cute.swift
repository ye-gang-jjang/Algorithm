import Foundation

let N = Int(readLine()!)!
var result = 0

for _ in 0..<N {
    let S = Int(readLine()!)!
    
    if S == 1 {
        result += 1
    } else {
        result -= 1
    }
}

print(result > 0 ? "Junhee is cute!" : "Junhee is not cute!")