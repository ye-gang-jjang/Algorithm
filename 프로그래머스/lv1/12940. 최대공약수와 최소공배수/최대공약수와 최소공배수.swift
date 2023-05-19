func solution(_ n:Int, _ m:Int) -> [Int] {
    var result = Array(repeating: 0, count: 2)

    func gcd(_ n: Int, _ m: Int) -> Int {
        return (m == 0) ? n : gcd(m, n%m)
    }

    func lcm(_ n: Int, _ m: Int) -> Int {
        return ((n*m) / gcd(n,m))
    }

    result[0] = gcd(n, m)
    result[1] = lcm(n, m)

    return result
}