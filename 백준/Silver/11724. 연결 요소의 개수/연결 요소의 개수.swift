var nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
var graph = Array(repeating: [], count: nm[0]+1)
var visited = Array(repeating: false, count: nm[0]+1)
var answer = 0
var depth = 0

for _ in 0..<nm[1] {
    let uv = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[uv[0]].append(uv[1])
    graph[uv[1]].append(uv[0])
}

func dfs(_ start: Int ,_ depth: Int) {
    visited[start] = true
    for i in 0..<graph[start].count{
        let next = graph[start][i]
        if visited[next as! Int] == false{
            dfs(next as! Int, depth + 1)
        }
    }
}

// main
for i in 1..<nm[0]+1 {
    if !visited[i] {
        if graph[i].isEmpty {
            answer += 1
            visited[i] = true
        } else {
            dfs(i, 0)
            answer += 1
        }
    }
}

print(answer)