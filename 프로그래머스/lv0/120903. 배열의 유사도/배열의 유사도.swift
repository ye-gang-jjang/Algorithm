import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    let answer = s1.filter { s2.contains($0) }.count
    return answer
}