import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    
    let boxCount = score.count % m
    let score = score.sorted(by: >)[0..<score.count - boxCount]
    
    for i in stride(from: 0, to: score.count, by: m) {
        result += Array(score[i..<i+m]).min()! * m
    }
    
    return result
}