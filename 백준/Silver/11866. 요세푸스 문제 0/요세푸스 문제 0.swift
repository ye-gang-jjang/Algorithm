let NK = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NK[0]
let K = NK[1]

var queue = Array(1...N)
var result = [Int]()
var cnt = K
while !queue.isEmpty {
    if cnt <= queue.count {
        result.append(queue[cnt-1])
        queue.remove(at: cnt-1)
        cnt += K - 1
    } else {
        cnt -= queue.count
    }
}

print("<\(result.map({String($0)}).joined(separator: ", "))>")