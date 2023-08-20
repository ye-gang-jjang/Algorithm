import Foundation

let N = Int(readLine()!)!
var table = [(Int, Int)]()

for _ in 0..<N {
    let startEnd = readLine()!.split(separator: " ").map{ Int($0)! }
    let (s,e) = (startEnd[0], startEnd[1])
    table.append((s,e))
}

table.sort {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
}

var end = 0
var cnt = 0

for (s,e) in table {
    if s >= end {
        end = e
        cnt += 1
    }
}

print(cnt)
