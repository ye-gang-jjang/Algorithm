import Foundation

func solution(_ polynomial:String) -> String {
    
    var numList = polynomial.components(separatedBy: " + ")
    var numX = [Int]()
    var num = [Int]()
    var result = ["",""]
    
    for i in numList {
        if i.contains("x") {
            if i == "x" {
                numX.append(1)
            } else {
                var temp = i
                temp.removeLast()
                numX.append(Int(temp)!)
            }
        } else {
            num.append(Int(i)!)
        }
    }
    
    result[0] = String(numX.reduce(0, +)) + "x"
    result[1] = String(num.reduce(0, +))
    
    if result[0] == "1x" {
        result[0] = "x"
    }
    
    if result[0] == "0x" {
        return String(result[1])
    } 
    
    else if result[1] == "0" {
        return String(result[0])
    } 
    
    else {
        return result.joined(separator: " + ")
    }


}