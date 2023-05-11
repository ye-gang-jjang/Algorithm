import Foundation

func solution(_ s:String) -> Bool {
    var check = true
    var cnt = 0
    
    if s.prefix(1) == ")" {
        return false
    }
    
    for i in s {
        if i == "(" {
            cnt += 1
        } else if i == ")" && cnt <= 0 {
            return false
            break
        } else {
            cnt -= 1
        }
    }
    return cnt == 0 && check
}