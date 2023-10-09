import Foundation

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, M) = (NM[0], NM[1])

var depth = 0
var result = [Int]()
var str = ""

func dfs(_ depth: Int) {
    if depth == M {
        str += result.map{ String($0) }.joined(separator: " ")
        str += "\n"
        return
    }
    
    for i in 1...N {
        result.append(i)
        dfs(depth+1)
        result.removeLast()
    }
}

dfs(depth)
print(str)