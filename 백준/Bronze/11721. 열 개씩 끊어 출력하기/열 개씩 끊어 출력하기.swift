let N = Array(readLine()!)

for n in 0..<N.count {
    if n % 10 == 9 {
        print(N[n])
    } else {
        print(N[n], terminator: "")
    }
}