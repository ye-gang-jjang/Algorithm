import Foundation

func solution(_ n:Int, _ k:Int) -> Int {    
    var result = n * 12000 + (k-(n/10)) * 2000
    
    return result
}