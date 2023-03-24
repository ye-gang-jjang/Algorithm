import Foundation

func solution(_ hp:Int) -> Int {
    let five = 5
    let three = 3
    let one = 1
    
    var result = 0
    result += hp/five
    result += (hp%five)/three
    result += (hp%five)%three
    
    return result
}