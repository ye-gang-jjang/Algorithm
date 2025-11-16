import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var count: Int = 0
    var paintedEnd = 0
    
    for s in section {
        if s > paintedEnd {
            count += 1
            paintedEnd = s + (m - 1)
        }
    }
    
    return count
}
