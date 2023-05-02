import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
    var str = ""

    for i in i...j {
        str += "\(i)"
    }
    
    let result = str.filter{ String($0) == "\(k)"}.count
    return result
}