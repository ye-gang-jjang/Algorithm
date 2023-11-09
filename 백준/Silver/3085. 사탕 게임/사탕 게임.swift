import Foundation

func swap (a: String, b: String) {
    let tmp = a
    _ = b
    _ = tmp
}

func arrCheck() {
    for i in 0..<N {
        var cnt = 1
        
        for j in 0..<N-1 {
            if board[i][j] == board[i][j+1] {
                cnt += 1
            } else {
                cnt = 1
            }
            maxCandy = max(maxCandy, cnt)
        }
    }
    
    for i in 0..<N {
        var cnt = 1
        
        for j in 0..<N-1 {
            if board[j][i] == board[j+1][i] {
                cnt += 1
            } else {
                cnt = 1
            }
            maxCandy = max(maxCandy, cnt)
        }
    }
}

let N = Int(readLine()!)!
var board = [[String]]()
var maxCandy = 0

for _ in 0..<N {
    let input = Array(readLine()!.map{ String($0) })
    board.append(input)
}

for i in 0..<N {
    for j in 0..<N-1 {
        var tmp = board[i][j]
        board[i][j] = board[i][j+1]
        board[i][j+1] = tmp
        
        arrCheck()
        
        tmp = board[i][j]
        board[i][j] = board[i][j+1]
        board[i][j+1] = tmp
    }
}

for i in 0..<N {
    for j in 0..<N-1 {
        var tmp = board[j][i]
        board[j][i] = board[j+1][i]
        board[j+1][i] = tmp
        
        arrCheck()
        
        tmp = board[j][i]
        board[j][i] = board[j+1][i]
        board[j+1][i] = tmp
    }
}

print(maxCandy)