import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    var num = Int(readLine()!)!
    
    while !prime(num) {
        num += 1
    }
    print(num)
}

func prime(_ num: Int) -> Bool {
    if num < 2 {
        return false
    }
    
    for i in 2..<Int(sqrt(Double(num)) + 1) {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}