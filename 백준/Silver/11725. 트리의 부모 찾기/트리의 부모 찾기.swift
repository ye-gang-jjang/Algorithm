import Foundation

final class FastScanner {
    private var data:[UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0]
    private var idx: Int = 0
    func readInt() -> Int {
        while data[idx] == 10 || data[idx] == 13 || data[idx] == 32 { idx += 1 } // 공백/개행 스킵
        var sign = 1
        if data[idx] == 45 { sign = -1; idx += 1 }
        var num = 0
        while data[idx] >= 48 {
            num = num * 10 + Int(data[idx] - 48)
            idx += 1
        }
        return num * sign
    }
}

let fs = FastScanner()
let n = fs.readInt()

var graph = Array(repeating: [Int](), count: n + 1)
if n > 1 {
    for _ in 0..<(n - 1) {
        let a = fs.readInt()
        let b = fs.readInt()
        graph[a].append(b)
        graph[b].append(a)
    }
}

var parent = Array(repeating: 0, count: n + 1)
var visited = Array(repeating: false, count: n + 1)

var queue = [Int]()
queue.reserveCapacity(n)
var head = 0

visited[1] = true
queue.append(1)

while head < queue.count {
    let cur = queue[head]
    head += 1
    
    for nxt in graph[cur] {
        if !visited[nxt] {
            visited[nxt] = true
            parent[nxt] = cur
            queue.append(nxt)
        }
    }
}

var out = ""
out.reserveCapacity(n * 2)
if n >= 2 {
    for i in 2...n {
        out += "\(parent[i])\n"
    }
}
print(out, terminator: "")
