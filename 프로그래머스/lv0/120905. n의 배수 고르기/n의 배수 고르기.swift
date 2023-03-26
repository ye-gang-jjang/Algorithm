import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var result: [Int] = []
    
    for i in numlist.indices {
        if numlist[i] % n == 0 {
            result.append(numlist[i])
        }
    }
    return result
}