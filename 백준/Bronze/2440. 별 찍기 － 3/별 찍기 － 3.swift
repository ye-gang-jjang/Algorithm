let N = Int(readLine()!)!

for idx in 1...N {
    var result = ""
    
    for _ in 1...(N - idx) + 1 {
        result += "*"
    }
    print(result)
}