func solution(_ n:Int) -> String {
    var result = String(repeating: "수박", count: n/2)
    
    if n % 2 == 0 {
        return result
    } else {
        result += "수"
        return result
    }
}