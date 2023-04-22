import Foundation

func solution(_ s:String) -> Int {
    var list: [String] = s.components(separatedBy: " ")
    var resultList = [Int]()
    
    for num in list {
        if num == "Z" {
            resultList.removeLast()
        } else {
            resultList.append(Int(num)!)
        }
    }
    return resultList.reduce(0, +)
}