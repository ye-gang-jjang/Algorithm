import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var str = Array(my_string)
    var temp1 = str[num1]
    var temp2 = str[num2]
    
    temp1 = str[num1]
    temp2 = str[num2]
    
    str[num1] = temp2
    str[num2] = temp1
    
    return String(str)
}