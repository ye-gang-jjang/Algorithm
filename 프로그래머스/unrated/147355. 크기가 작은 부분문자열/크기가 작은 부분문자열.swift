import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    var result = 0
    let tLen = t.count
    let pLen = p.count
    
    for i in 0..<tLen - pLen + 1 {
        let stIdx = t.index(t.startIndex, offsetBy: i)
        let endIdx = t.index(t.startIndex, offsetBy: i + pLen - 1)
        let num = stIdx...endIdx
        
        if Int64(t[num])! <= Int(p)! {
            result += 1
        }
    }
    
    return result
}