
func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    let minN = arr.min()!
    let nIdx = arr.firstIndex(of: minN)!
    result.remove(at: nIdx)
    
    return arr.count == 1 ? [-1] : result
}