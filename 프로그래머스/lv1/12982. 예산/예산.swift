import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var dArr = d.sorted()
    var bud = budget
    var result = 0

    for i in 0..<d.count {
        if bud - dArr[i] >= 0{
            bud -= dArr[i]
            result += 1
        } else {
            break
        }
    }

    return result
}