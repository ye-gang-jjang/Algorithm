import Foundation

func solution(_ board:[[Int]]) -> Int {
    
    let dx = [-1, 0, 1, 1, 1, 0, -1, -1]
    let dy = [1, 1, 1, 0, -1, -1, -1, 0]
    
    
    var result = Array(repeating: Array(repeating: 0, count: board.count), count: board.count)
    let N = board.count
    var answer = 0
    
    func check(_ r: Int, _ c: Int) {
        result[r][c] = 1

        for i in 0..<8 {
            let nx = r + dx[i]
            let ny = c + dy[i]

            if (nx >= 0) && (ny >= 0) && (nx < N) && (ny < N) {
                result[nx][ny] = 1
            }
        }
    }
    
    for r in 0..<N {
        for c in 0..<N {
            if board[r][c] == 1 {
                check(r, c)
            }
        }
    }
    
    for r in 0..<N {
        for c in 0..<N {
            if result[r][c] == 0 {
                answer += 1
            }
        }
    }
    
    return answer
}