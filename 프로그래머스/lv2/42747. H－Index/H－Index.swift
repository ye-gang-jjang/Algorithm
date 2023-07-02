import Foundation

func solution(_ citations:[Int]) -> Int {
    var result = 0
    var citationSort = citations.sorted()

    for i in 0..<citationSort.count {
        if citationSort[i] >= citationSort.count - i {
            result += 1
        }
    }
    
    return result
}