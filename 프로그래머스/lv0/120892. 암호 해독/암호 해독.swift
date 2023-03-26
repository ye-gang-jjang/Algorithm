import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var result = ""
    var index = code - 1
    
    while index < cipher.count {
        let startIdx = cipher.index(cipher.startIndex, offsetBy: index)
        let char = String(cipher[startIdx])
        result += char
        index += code
    }
    return result
}