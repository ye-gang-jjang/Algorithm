import Foundation

func solution(_ my_string:String) -> Int {
    var str = my_string.split(separator: " ")
    var result = Int(str[0])!
    
    for idx in str.indices {
        if str[idx] == "+" {
            result += Int(str[idx+1])!
        } else if str[idx] == "-" {
            result -= Int(str[idx+1])!
        }
    }
    return result
}