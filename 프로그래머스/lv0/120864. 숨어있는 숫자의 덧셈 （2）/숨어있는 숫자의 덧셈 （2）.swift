import Foundation

func solution(_ my_string:String) -> Int {
    
    var numList = my_string.split(whereSeparator: { !$0.isNumber })
    var result = numList.reduce(0, { Int($0) + Int($1)! })
    return result
}