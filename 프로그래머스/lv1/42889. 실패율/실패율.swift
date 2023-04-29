import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var stageList = Array(repeating: 0, count: N+1)
    var result = [Int: Double]()
    
    for stage in stages {
        for i in 0..<stage {
            stageList[i] += 1
        }
    }
    
    for i in 0..<N {
        result.updateValue(Double(stageList[i] - stageList[i + 1]) / Double(stageList[i]), forKey: i+1) 
    }
    
    return result.sorted(by: <).sorted(by: {$0.value > $1.value}).map({ $0.key })
}