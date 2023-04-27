import Foundation

func solution(_ sides:[Int]) -> Int {
    
    var sideSort = sides.sorted()
    let sideMin = sideSort[0]
    let sideMax = sideSort[1]
    
    return sideMin * 2 - 1
}