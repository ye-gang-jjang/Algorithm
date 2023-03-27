import Foundation

func solution(_ array:[Int]) -> [Int] {
    let sortArray = array.sorted(by: >)
    let arrResult = sortArray[0]
    let arrayIdx = array.firstIndex(of: arrResult)
    let result: [Int] = [sortArray[0], arrayIdx!]
    
    return result
}