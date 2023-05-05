import Foundation

func solution(_ s:String) -> Bool {
    var ans:Bool = false
    
    let str = s.lowercased()
    let strP = str.filter{ $0 == "p"}.count
    let strY = str.filter{ $0 == "y"}.count
    
    return strP == strY ? true : false
}