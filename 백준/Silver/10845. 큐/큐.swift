let N = Int(readLine()!)!
var arr = [Int]()

for _ in 1...N {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push" :
        push(Int(command[1])!)
    case "pop":
        print(pop())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        continue
    }
}

func push(_ value: Int) {
    arr.append(value)
}

func pop() -> Int {
    return arr.isEmpty ? -1 : arr.removeFirst()
}

func size() -> Int {
    return arr.count
}

func empty() -> Int {
    return arr.isEmpty ? 1 : 0
}

func front() -> Int {
    return arr.isEmpty ? -1 : arr.first!
}

func back() -> Int {
    return arr.isEmpty ? -1 : arr.last!
}