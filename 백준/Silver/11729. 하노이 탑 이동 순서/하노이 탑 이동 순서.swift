import Foundation

let N = Int(readLine()!)!
var result = ""
var cnt = 0

func hanoi(N: Int, from: Int, to: Int, assist: Int) {
    if N == 1 {
        result += "\(from) \(to)\n"
        cnt += 1
        return
    }
    
    hanoi(N: N - 1, from: from, to: assist, assist: to)
    result += "\(from) \(to)\n"
    cnt += 1
    hanoi(N: N - 1, from: assist, to: to, assist: from)
}

hanoi(N: N, from: 1, to: 3, assist: 2)
print(cnt)
print(result)