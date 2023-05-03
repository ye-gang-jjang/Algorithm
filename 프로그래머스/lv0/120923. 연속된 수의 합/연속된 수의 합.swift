import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var numList = Array(repeating: 0, count: num)
    var startNum = (total/num) - ((num-1)/2)
    
    for i in 0..<num {
        numList[i] = startNum
        startNum += 1
    }
    return numList
}