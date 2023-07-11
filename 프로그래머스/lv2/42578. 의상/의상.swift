import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var typeCnt = [String: Int]()
    
    for type in clothes {
        if typeCnt[type[1]] != nil {
            typeCnt[type[1]]! += 1
        } else {
            typeCnt[type[1]] = 1
        }
    }
    
    var cnt: Int = 1
    for (ket, value) in typeCnt {
        cnt *= (value + 1)
    }
    
    return cnt - 1
}