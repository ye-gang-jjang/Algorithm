import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var str = ""
    
    for char in my_string {
        str += String(repeating: String(char), count: n)
    }
    
    return str
}