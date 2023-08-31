func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1) { lcm($0, $1) }
}

func gcd(_ n1: Int, _ n2: Int) -> Int {
    if n2 == 0 {
        return n1
    } else {
        return gcd(n2, n1%n2)
    }
}

func lcm(_ n1: Int, _ n2: Int) -> Int {
    return n1*n2 / gcd(n1, n2)
}
