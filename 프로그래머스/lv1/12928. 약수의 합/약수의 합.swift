func solution(_ n:Int) -> Int {
    var result = 0
    
    for i in stride(from: 1, through: n, by: 1) {
        if n % i == 0 {
            result += i
        }
    }
    return result
}