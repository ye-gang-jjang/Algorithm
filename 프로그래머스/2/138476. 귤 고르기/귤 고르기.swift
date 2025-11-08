import Foundation

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    var countSize: [Int:Int] = [:]
    for x in tangerine { 
        countSize[x, default: 0] += 1 
    }

    let counts = countSize.values.sorted(by: >)
    var k = k, result = 0
    
    for c in counts {
        k -= c
        result += 1
        if k <= 0 { break }
    }
    
    return result
}