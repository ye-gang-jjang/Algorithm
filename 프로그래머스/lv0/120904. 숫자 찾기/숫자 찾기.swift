import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    var str = String(num)
    
    for i in 0..<str.count {
        if String(str[str.index(str.startIndex, offsetBy: i)]) == String(k) {
            return i + 1
        }
    }
    return -1
}