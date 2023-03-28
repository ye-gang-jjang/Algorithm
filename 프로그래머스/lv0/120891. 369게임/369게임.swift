import Foundation

func solution(_ order:Int) -> Int {
    let str = String(order)
    var result = 0
    
    for i in str.indices {
        if str[i] == "3" {
            result += 1
        } else if str[i] == "6" {
            result += 1
        } else if str[i] == "9" {
            result += 1
        }
    }
    return result
}