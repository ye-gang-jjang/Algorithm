import Foundation

let NMR = readLine()!.split(separator: " ").map { Int($0)! }
let N = NMR[0], M = NMR[1], R = NMR[2]
var visited: [Int] = [Int](repeating: 0, count: N + 1)
var graph: [[Int]] = [[Int]](repeating: [], count: N + 1)
var depth: Int = 1

for _ in 0..<M {
    let uv = readLine()!.split(separator: " ").map { Int($0)! }
    let u = uv[0], v = uv[1]
    graph[u].append(v)
    graph[v].append(u)
}

dfs(node: R)

func dfs(node: Int) {
    visited[node] = depth
    
    let sortNodes = graph[node].sorted(by: <)
    
    for nextNode in sortNodes {
        if visited[nextNode] == 0 {
            depth += 1
            dfs(node: nextNode)
        }
    }
}

print(visited[1...].map { String($0)}.joined(separator: "\n") )