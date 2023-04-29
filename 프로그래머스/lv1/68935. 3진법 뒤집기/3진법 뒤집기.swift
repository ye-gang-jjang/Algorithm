import Foundation

func solution(_ n:Int) -> Int {
    let num = String(n, radix: 3)
    let reversNum = String(num.reversed())
    
    return Int(reversNum, radix: 3)!
}