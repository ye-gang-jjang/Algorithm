import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var str = ""
    
    for char in my_string {
        if String(char) != letter {
            str += String(char)
        }
    }
    
    return str
}