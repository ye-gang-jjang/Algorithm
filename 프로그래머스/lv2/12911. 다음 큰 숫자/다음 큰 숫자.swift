import Foundation

func solution(_ n:Int) -> Int {
    var nCnt = String(n, radix: 2).filter({ ($0) == "1" }).count
    var nextNum = n

    while true {
        nextNum += 1
        let nextNumCnt = String(nextNum, radix: 2).filter({ ($0) == "1" }).count
        
        if nCnt == nextNumCnt {
            return nextNum
            break
        }
    }
}