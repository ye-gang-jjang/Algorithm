import Foundation

func solution(_ my_string:String) -> Int {
    var sum = 0
    
    for char in my_string {
        if char.isNumber == true {
            sum += Int(String(char))!
        }
    }
    
    return sum
}