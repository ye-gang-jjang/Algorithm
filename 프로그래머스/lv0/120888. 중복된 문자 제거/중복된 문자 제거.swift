import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    
    for idx in my_string {
        if !result.contains(idx) {
            result.append(idx)
        }
    }
    return result
}