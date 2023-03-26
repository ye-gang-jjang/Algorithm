import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let strContain = str1.contains(str2)
    
    return strContain == true ? 1 : 2
}