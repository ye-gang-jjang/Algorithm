let N = Int(readLine()!)!

for i in 0..<N {
    var temp = ""
    
    for _ in 0..<i {
        temp += " "
    }
    
    for _ in 0..<(2*N) - (2*i + 1) {
        temp += "*"
    }
    
    print(temp)
}