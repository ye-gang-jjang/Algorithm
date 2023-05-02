import Foundation

func solution(_ A:String, _ B:String) -> Int {
    if A == B {
        return 0
    }
    
    var strA = A
    var result = 0
    
    for _ in 0..<A.count {
        let c = strA[strA.index(before: strA.endIndex)]
        
        if strA == B {
            return result
            
        } else {
            strA.insert(c, at: strA.startIndex)
            strA.removeLast()
            result += 1
        }
    }
    
    return -1
}