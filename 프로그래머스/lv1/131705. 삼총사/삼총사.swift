import Foundation

func solution(_ number:[Int]) -> Int {
    var num = number.sorted()
    var result = 0

    for i in 0..<num.count {
        for j in i+1..<num.count {
            for k in j+1..<num.count {
                if num[i] + num[j] + num[k] == 0 {
                    result += 1
                }
            }
        }
    }
    return result
}