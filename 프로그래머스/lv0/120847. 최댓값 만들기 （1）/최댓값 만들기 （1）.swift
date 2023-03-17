import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sortArr = numbers.sorted(by: >)
    let arrMult = sortArr[0] * sortArr[1]
    return arrMult
}