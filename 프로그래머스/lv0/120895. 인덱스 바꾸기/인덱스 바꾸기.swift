import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var str = Array(my_string)
    
    str.swapAt(num1, num2)
    
    return String(str)
}