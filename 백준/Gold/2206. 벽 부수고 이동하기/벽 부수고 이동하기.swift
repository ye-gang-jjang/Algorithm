import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]

var grid = [[Int]]()
for _ in 0..<N {
    let row = Array(readLine()!).map { Int(String($0))! }
    grid.append(row)
}

var dist = Array(
    repeating: Array(repeating: Array(repeating: 0, count: 2), count: M),
    count: N
)

var qR = [Int](), qC = [Int](), qB = [Int]()
qR.reserveCapacity(N*M*2)
qC.reserveCapacity(N*M*2)
qB.reserveCapacity(N*M*2)
var head = 0

dist[0][0][0] = 1
qR.append(0); qC.append(0); qB.append(0)

let dr = [-1,1,0,0]
let dc = [0,0,-1,1]

while head < qR.count {
    let r = qR[head]
    let c = qC[head]
    let b = qB[head]
    let d = dist[r][c][b]
    head += 1
    
    if r == N-1 && c == M-1 {
        print(d)
        exit(0)
    }
    
    for k in 0..<4 {
        let nr = r + dr[k]
        let nc = c + dc[k]
        if nr < 0 || nr >= N || nc < 0 || nc >= M { continue }
        
        if grid[nr][nc] == 0 {
            if dist[nr][nc][b] == 0 {
                dist[nr][nc][b] = d + 1
                qR.append(nr); qC.append(nc); qB.append(b)
            }
        } else if b == 0 {
            if dist[nr][nc][1] == 0 {
                dist[nr][nc][1] = d + 1
                qR.append(nr); qC.append(nc); qB.append(1)
            }
        }
    }
}

print(-1)
