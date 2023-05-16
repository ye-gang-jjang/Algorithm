let input = readLine()!.split(separator: " ").map{ Int($0)! }
let A = input[0]
let B = input[1]

func gcd(_ a: Int, _ b: Int) -> Int {
    return (b == 0) ? a : gcd(b, a%b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return ((a*b) / gcd(a,b))
}

print(gcd(A, B))
print(lcm(A, B))