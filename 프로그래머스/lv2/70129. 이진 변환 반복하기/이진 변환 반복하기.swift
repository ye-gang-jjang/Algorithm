import Foundation

func solution(_ s:String) -> [Int] {
    
    var convertCnt = 0
    var zeroCnt = 0
    var str = s

    while str != "1" {
        let zero = str.filter({$0 == "0"}).count

        zeroCnt += zero

        str = String((str.count - zero), radix: 2)
        convertCnt += 1
    }
    
    return [convertCnt, zeroCnt]
}