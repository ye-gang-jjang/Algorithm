import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var numArr = [Int]()
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            numArr.append(numbers[i] + numbers[j])
        }
    }
    return Array(Set(numArr)).sorted()
}