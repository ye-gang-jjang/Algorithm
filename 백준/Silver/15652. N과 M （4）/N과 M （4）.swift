import Foundation

let NM = readLine()!.split(separator: " ").compactMap { Int($0) }
let N = NM[0], M = NM[1]

var pick = Array(repeating: 0, count: M)
var out = String()

func dfs(_ depth: Int, _ start: Int) {
    if depth == M {
        // 한 줄 출력
        for i in 0..<M {
            out += "\(pick[i])"
            out += (i + 1 == M) ? "\n" : " "
        }
        return
    }
    if start <= N {
        for x in start...N {
            pick[depth] = x
            dfs(depth + 1, x)
        }
    }
}

dfs(0, 1)
print(out, terminator: "")