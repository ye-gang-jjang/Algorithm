import Foundation

func solution(_ numbers:[Int]) -> Double {
    let arrSum = Double(numbers.reduce(0,+))
    let result = Double(arrSum)/Double(numbers.count)
    return result
}