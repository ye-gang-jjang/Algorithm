import Foundation

func solution(_ my_string:String) -> [String] {
    let result = my_string.split(separator: " ").map{ String($0) }
    return result
}