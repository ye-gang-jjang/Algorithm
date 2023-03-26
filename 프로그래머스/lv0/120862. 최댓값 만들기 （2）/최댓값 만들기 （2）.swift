import Foundation

func solution(_ numbers:[Int]) -> Int {
    let numberSort = numbers.sorted()
    
    let num1 = numberSort[0] * numberSort[1]
    let num2 = numberSort[numberSort.count - 1] * numberSort[numberSort.count - 2]
    return num1 > num2 ? num1 : num2
}