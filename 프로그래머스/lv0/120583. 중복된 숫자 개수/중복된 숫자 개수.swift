import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var count = 0
    
    for number in array {
        if number == n {
            count += 1
        }
    }
    return count
}