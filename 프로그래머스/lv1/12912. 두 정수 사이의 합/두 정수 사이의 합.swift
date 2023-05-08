func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum: Int64 = 0
    
    if a <= b {
        for n in a...b {
            sum += Int64(n)
        }
    } else {
        for n in b...a {
            sum += Int64(n)
        }
    }
    return sum
}