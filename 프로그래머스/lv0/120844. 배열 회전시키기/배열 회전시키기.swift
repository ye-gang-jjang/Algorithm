import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var numList = numbers
    
    if direction == "left" {
        let firstNum = numList.removeFirst()
        numList.append(firstNum)
    } else {
        let lastNum = numList.removeLast()
        numList.insert(lastNum, at: 0)
    }
    
    return(numList)
}