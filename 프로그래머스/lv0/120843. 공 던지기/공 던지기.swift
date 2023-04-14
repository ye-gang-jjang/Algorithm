import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    let result = Int(((k-1)*2)%numbers.count)
    return numbers[result]
}