import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var result = 0
    var table = Array(repeating: 0, count: 200)

    for i in 0..<3 {
        for j in lines[i][0]+100 ..< lines[i][1]+100 {
            table[j] += 1
        }
    }

    for i in 0 ..< 200 {
        if table[i] > 1 {
            result += 1
        }
    }
    return result
}