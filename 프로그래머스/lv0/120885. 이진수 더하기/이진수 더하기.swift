import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    let num1 = Int(bin1, radix: 2)!
    let num2 = Int(bin2, radix: 2)!
    
    let result = String((num1 + num2), radix:2)
    return result
}