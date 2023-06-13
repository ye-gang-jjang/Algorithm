let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input[0]
let S = input[1]

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var visited = Array(repeating: false, count: 21)

var count = 0
var sum = 0

func dfs(_ cnt: Int, _ start: Int){
    if sum == S && cnt > 0{
        count += 1
    }
    
    for i in start..<N{
        if !visited[i]{
            visited[i] = true
            sum += arr[i]
            dfs(cnt + 1, i)
            visited[i] = false
            sum -= arr[i]
        }
    }
}

dfs(0, 0)
print(count)