import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var arr: [Int] = emergency.sorted(by: >)
    var result: [Int] = Array(repeating: 0, count: emergency.count)
    
    for idx in 0 ..< arr.count {
        for idx2 in 0 ..< arr.count {
            if arr[idx] == emergency[idx2] {
                result[idx2] = idx + 1
            }
        }
    }
    
    return result
}