import Foundation

func solution(_ n:Int64) -> Int64 {
    let num = Int64(sqrt(Double(n)))
    return Int64(pow(Double(num),2)) == n ? Int64(pow((Double(num)+1), 2)) : -1
}