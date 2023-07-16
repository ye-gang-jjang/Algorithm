while true {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }
    input.sort()
    
    let a = input[0]
    let b = input[1]
    let c = input[2]
    
    
    if a == 0 && b == 0 && c == 0 {
        break
    }
    
    print((a*a + b*b == c*c) ? "right" : "wrong")
}