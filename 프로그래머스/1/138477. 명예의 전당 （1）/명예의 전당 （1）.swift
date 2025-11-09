import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var ScoreHall: [Int] = []
    var result: [Int] = []
    
    for s in score {
        ScoreHall.append(s)
        ScoreHall.sort(by: >)
        
        if ScoreHall.count > k {
            ScoreHall.removeLast()
        }
        
        result.append(ScoreHall.last!)
    }
    
    return result
}