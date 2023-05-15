import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
   
    var result = 0
    
    for i in left...right {
        var number = 0
        for j in 1...i {
            if i % j == 0 {
                number += 1
            }
        }
        
        if number % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }

    return result
}