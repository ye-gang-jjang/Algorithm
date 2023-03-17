import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sortArr = numbers.sorted(by: >)
    return sortArr[0] * sortArr[1]
}