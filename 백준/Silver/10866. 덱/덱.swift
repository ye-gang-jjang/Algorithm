let N = Int(readLine()!)!

var arr = [Int]()

for _ in 1...N {
    let command = readLine()!.split(separator: " ")
    
    switch String(command[0]) {
        
    case "push_front":
        push_front(Int(command[1])!)
    case "push_back":
        push_back(Int(command[1])!)
    case "pop_front":
        print(pop_front())
    case "pop_back":
        print(pop_back())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
        
    default:
        break
    }
    
}

func push_front(_ n: Int) {
    if arr.isEmpty {
        arr.append(n)
    } else {
        arr.reverse()
        arr.append(n)
        arr.reverse()
    }
}

func push_back(_ n: Int) {
    arr.append(n)
}

func pop_front() -> Int {
    if arr.isEmpty {
        return -1
    } else {
        return arr.removeFirst()
    }
}

func pop_back() -> Int {
    if arr.isEmpty {
        return -1
    } else  {
        return arr.removeLast()
    }
}

func size() -> Int {
    return arr.count
}

func empty() -> Int {
    if arr.isEmpty {
        return 1
    } else {
        return 0
    }
}

func front() -> Int {
    if arr.isEmpty {
        return -1
    } else {
        return arr.first!
    }
}

func back() -> Int {
    if arr.isEmpty {
        return -1
    } else {
        return arr.last!
    }
}
