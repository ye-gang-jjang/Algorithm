import Foundation

func solution(_ n:Int) -> [Int] {
    var arr: [Int] = []
    
    for i in 1...n where i % 2 == 1 {
        arr.append(i)
    }
    
    return arr
}