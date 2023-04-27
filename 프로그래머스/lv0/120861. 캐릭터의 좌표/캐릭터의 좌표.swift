import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let row = board[0] / 2
    let col = board[1] / 2
    var result = [0, 0]
    
    for i in keyinput {
        if i == "left" && result[0] > -row { 
            result[0] -= 1
        }
        
        if i == "right" && result[0] < row {
            result[0] += 1
        }
        
        if i == "up" && result[1] < col {
            result[1] += 1
        }
        
        if i == "down" && result[1] > -col {
            result[1] -= 1
        }
    }
    return result
}