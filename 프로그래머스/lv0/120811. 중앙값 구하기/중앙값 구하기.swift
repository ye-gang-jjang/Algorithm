import Foundation

func solution(_ array:[Int]) -> Int {
    let arrSorted = array.sorted()
    let arrCnt = array.count
    
    let wantIndex = arrCnt / 2
    let result = arrSorted[wantIndex]
    return result
}