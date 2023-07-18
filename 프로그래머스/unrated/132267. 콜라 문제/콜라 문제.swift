import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var nowBottle = n
    var result = 0
    
    while nowBottle >= a {
        let returnBottle = ((nowBottle/a)*b)
        
        result += returnBottle
        nowBottle = nowBottle - (nowBottle/a * a) + returnBottle
    }
    
    return result
}