import Foundation

func solution(_ n:Int) -> Int {
    var pizza = n / 7
    if n%7 != 0 {
        pizza += 1
    }
    return pizza
}