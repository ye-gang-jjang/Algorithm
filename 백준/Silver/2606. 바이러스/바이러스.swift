import Foundation

let computer = Int(readLine()!)!
let networkNum = Int(readLine()!)!

var network = [Int:[Int]]()

for num in 1...computer {
    network[num] = []
}

for _ in 0..<networkNum {
    let temp = readLine()!.split(separator: " ").map{ Int($0)! }
    network[temp[0]]?.append(temp[1])
    network[temp[1]]?.append(temp[0])
}

var visited = [Int]()
var stack = [1]

while stack.count != 0 {
    guard let temp = stack.popLast() else {
        fatalError()
    }
    if !visited.contains(temp) {
        visited.append(temp)
        guard let temp2 = network[temp] else {
            fatalError()
        }
        stack += temp2
    }
}

print(visited.count - 1)