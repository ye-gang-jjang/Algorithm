var num = 0
for _ in 0..<5 {
    let input = Int(readLine()!)!
    num += input < 40 ? 40 : input
}
print(num/5)