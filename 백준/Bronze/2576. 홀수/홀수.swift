var num = [Int]()

for _ in 1...7 {
    let input = Int(readLine()!)!
    if input % 2 == 1 {
        num.append(input)
    }
}

if !num.isEmpty {
    print(num.reduce(0, +))
    print(num.min()!)
} else {
    print(-1)
}