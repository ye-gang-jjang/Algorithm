import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let M = input[1]

var visited = Array(repeating: false, count: N + 1)
var depth: Int = 0

var stack: [Int] = []

func result(depth: Int) {
    if depth == M {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    }else {
        for i in 1...N {
            if !visited[i]{
                visited[i] = true
                stack.append(i)
                result(depth: depth + 1)
                visited[i] = false
                stack.removeLast()

            }
        }
    }

}

result(depth: depth)