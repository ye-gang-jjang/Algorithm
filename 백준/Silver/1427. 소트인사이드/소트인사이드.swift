let input = String(Int(readLine()!)!).sorted(by: >)
for i in 0..<input.count {
    print("\(input[i])", terminator: "")
}