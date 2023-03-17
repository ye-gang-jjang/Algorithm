import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let nPrice = n * 12000
    let sale =  n / 10
    let kPrice = (k-sale) * 2000
    
    
    var result = nPrice + kPrice
    
    return result
}