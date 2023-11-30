import Foundation

var scoreBoard = [Int]()
var sumScoreBoard = [Int]()

for _ in 0..<10 {
    scoreBoard.append(Int(readLine()!)!)
}

for i in stride(from: 10, through: 1, by: -1) {
    let sumScore = scoreBoard[0..<i].reduce(0, +)
    sumScoreBoard.append(sumScore)
}

sumScoreBoard.sort(by: >)

var max = 1001
var result = 0

for i in 0..<10 {
    let tmp = abs(100 - sumScoreBoard[i])
    
    if tmp < max {
        max = tmp
        result = sumScoreBoard[i]
    }
}

print(result)