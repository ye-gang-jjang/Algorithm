let input = readLine()!.split(separator: " ").map{ Int64($0)! }
let A = input[0]
let B = input[1]


func gcd(_ a: Int64, _ b: Int64) -> Int64 {
    if (b == 0) {
        return Int64(a)
    }
    
    return gcd(b, a % b)
}

print((A*B) / gcd(A,B))