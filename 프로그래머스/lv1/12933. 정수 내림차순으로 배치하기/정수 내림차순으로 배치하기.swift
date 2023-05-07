func solution(_ n:Int64) -> Int64 {
    let sortStrArr = String(n).sorted(by: >)
    let numArr = Int64(String(sortStrArr))!
    return numArr
}