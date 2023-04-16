import Foundation

func solution(_ n:Int) -> Int {
    var i = 0
    var fac = 1
    
    while fac <= n {
        i += 1
        fac *= i
    }
    
    return (i-1)
}