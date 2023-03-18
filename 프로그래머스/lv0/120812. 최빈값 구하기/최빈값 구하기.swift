import Foundation

func solution(_ array:[Int]) -> Int {
    var count: [Int:Int] = [:]
    var maxCount = 0
    var maxNum = 0
    
    for num in array {
        count[num, default: 0] += 1
        if let currCount = count[num], currCount > maxCount {
            maxCount = currCount
            maxNum = num
        }
    }
    
    var freq = 0
    for value in count.values {
        if value == maxCount {
            freq += 1
        }
    }
    
    return freq > 1 ? -1 : maxNum
}