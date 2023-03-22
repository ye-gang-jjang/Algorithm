import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var countArr: [Int] = []
    
    for idx in 0..<strlist.count {
        countArr.append(strlist[idx].count)
    }
    
    return countArr
}