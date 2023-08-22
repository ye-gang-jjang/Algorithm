import Foundation

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NM[0]
let M = NM[1]

var visited = Array(repeating: false, count: N+1)
var depth = 0
var result = [Int]()

dfs(depth)

func dfs(_ depth: Int) {
    if depth == M {
        if result.sorted() == result {
            print(result.map{ String($0)}.joined(separator: " ") )
            return
        } else {
            return
        }
    }
    
    for i in 1...N {
        if !visited[i] {
            visited[i] = true
            result.append(i)
            
            dfs(depth+1)
            
            visited[i] = false
            result.removeLast()
        }
    }
}