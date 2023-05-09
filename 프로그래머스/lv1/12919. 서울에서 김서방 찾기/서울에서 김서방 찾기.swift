func solution(_ seoul:[String]) -> String {
    var x: Int = 0
    
    for name in seoul {
        if name == "Kim" {
            break
        } else {
            x += 1 
        }
    }
    return "김서방은 \(x)에 있다"
}