import Foundation

func solution(_ n:Int) -> Int {
    var sum = 0
    for i in String(n) {
        sum += Int(String(i))!
    }
    
    return sum
}