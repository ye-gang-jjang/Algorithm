import Foundation

let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var ops = readLine()!.split(separator: " ").map { Int($0)! }

var maxValue = Int.min
var minValue = Int.max

func dfs(_ idx: Int, _ current: Int) {
    if idx == N {
        maxValue = max(maxValue, current)
        minValue = min(minValue, current)
        return
    }
    
    let next = nums[idx]
    
    if ops[0] > 0 {
        ops[0] -= 1
        dfs(idx + 1, current + next)
        ops[0] += 1
    }
    
    if ops[1] > 0 {
        ops[1] -= 1
        dfs(idx + 1, current - next)
        ops[1] += 1
    }
    
    if ops[2] > 0 {
        ops[2] -= 1
        dfs(idx + 1, current * next)
        ops[2] += 1
    }
    
    if ops[3] > 0 {
        ops[3] -= 1
        dfs(idx + 1, current / next) // Swift Int 나눗셈은 0을 향해 버림
        ops[3] += 1
    }
}

dfs(1, nums[0])

print(maxValue)
print(minValue)