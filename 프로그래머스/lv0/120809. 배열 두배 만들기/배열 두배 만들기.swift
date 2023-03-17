import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let multiArray = numbers.map{ $0 * 2}
    return multiArray
}