import Foundation

func solution(_ my_string:String) -> String {
    var str = my_string.lowercased().map{ String($0) }.sorted().joined(separator: "")
    return str
}