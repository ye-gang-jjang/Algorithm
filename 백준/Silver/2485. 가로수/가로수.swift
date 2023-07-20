import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

let N = Int(readLine()!)!
var trees = [Int]()

for _ in 1...N {
    trees.append(Int(readLine()!)!)
}

trees.sort()

var mid = 0

for i in 0..<N-1 {
    mid = gcd(mid, trees[i+1] - trees[i])
}

print((trees.last! - trees.first!) / mid - N + 1)
