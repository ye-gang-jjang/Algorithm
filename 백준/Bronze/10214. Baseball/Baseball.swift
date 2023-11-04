import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    var yonsei = 0
    var korea = 0
    
    for _ in 0..<9 {
        let YK = readLine()!.split(separator: " ").map{ Int($0)! }
        let Y = YK[0]
        let K = YK[1]
        
        yonsei += Y
        korea += K
    }
    
    if yonsei == korea {
        print("Draw")
    } else if yonsei > korea {
        print("Yonsei")
    } else {
        print("Korea")
    }
}