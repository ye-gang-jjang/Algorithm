import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let A = input[0], B = input[1]
    
    if A == 1 {
        print(B)
    } else if B == 1 {
        print(A)
    } else {
        print(A*B / GCD(A, B))
    }
}

func GCD(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return GCD(b, a % b)
}

// 유클리드호제법을 사용하지 않은 풀이
// - 시간초과
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    let input = readLine()!.split(separator: " ").map{ Int($0)! }
//    let A = input[0]
//    let B = input[1]
//
//    if A == 1 {
//        print(B)
//    } else if B == 1 {
//        print(A)
//    } else {
//        print(findLCM(A, B))
//    }
//}
//
//func findLCM(_ a: Int, _ b: Int) -> Int {
//    var lcm = max(a, b)
//
//    while true {
//        if lcm % a == 0 && lcm % b == 0 {
//            return lcm
//        }
//
//        lcm += 1
//    }
//    return lcm
//}