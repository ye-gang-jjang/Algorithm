func solution(_ n:Int64) -> [Int] {
    let strArr = String(n).map{ String($0) }
    let strReversedArr = strArr.reversed()
    let numArr = strReversedArr.map{ Int($0)! }
    
    return numArr
}