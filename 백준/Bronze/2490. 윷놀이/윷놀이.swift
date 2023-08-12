for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
    
    if input == 0 {
        print("D")
    } else if input == 1 {
        print("C")
    } else if input == 2 {
        print("B")
    } else if input == 3 {
        print("A")
    } else if input == 4 {
        print("E")
    }
}