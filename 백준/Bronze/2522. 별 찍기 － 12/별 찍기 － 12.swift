let N = Int(readLine()!)!

for i in 0..<N {
    var output = ""
    for _ in 0..<N-1-i {
        output += " "
    }
    for _ in 0..<i+1 {
        output += "*"
    }
    
    print(output)
}

for i in 1..<N {
    var output = ""
    for _ in 0..<i {
        output += " "
    }
    for _ in 0..<N-i {
        output += "*"
    }
    
    print(output)
}