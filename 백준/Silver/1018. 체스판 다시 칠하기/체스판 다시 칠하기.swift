import Foundation
let board1: [[Character]] = [
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"]
]

let board2: [[Character]] = [
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"]
]

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, M) = (NM[0], NM[1])

var board = [[Character]]()

for _ in 0..<N {
    board.append(Array(readLine()!))
}

var result = Int.max

for y in 0...(N - 8) {
    for x in 0...(M - 8) {
        var cnt1 = 0, cnt2 = 0
        
        for i in y..<(y + 8) {
            for j in x..<(x + 8) {
                if board[i][j] != board1[i-y][j-x] {
                    cnt1 += 1
                }
                
                if board[i][j] != board2[i-y][j-x] {
                    cnt2 += 1
                }
            }
        }
        result = min(result, cnt1, cnt2)
    }
}

print(result)