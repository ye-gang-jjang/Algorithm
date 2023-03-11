let N = Int(readLine()!)!

for i in 1...N {
    let star = String(repeating: " ", count: N - i) + String(repeating: "*", count: 2 * i - 1)
    print(star)
}

for i in 1..<N {
    let star = String(repeating: " ", count: i) + String(repeating: "*", count: 2 * (N - i) - 1)
    print(star)
}