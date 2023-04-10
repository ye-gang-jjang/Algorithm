while true {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let A = input[0]
    let B = input[1]
    
    if A == 0 && B == 0 {
        break
    }
    
    if A > B {
        print("Yes")
    } else {
        print("No")
    }
}