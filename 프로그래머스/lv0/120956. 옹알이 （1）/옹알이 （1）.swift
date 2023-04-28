import Foundation

func solution(_ babbling:[String]) -> Int {
    let babblingCnt: [Int] = babbling.map{ $0.count }
    let list = ["aya": 3, "ye": 2, "woo": 3, "ma": 2]
    var result = 0
    
    for idx in babbling.indices {
        var cnt = 0
        
        for (listKey, listValue) in list {
            if babbling[idx].contains(listKey) {
                cnt += listValue
            }
        }
        
        if cnt == babblingCnt[idx] {
            result += 1
        }
    }
    
    return result
}