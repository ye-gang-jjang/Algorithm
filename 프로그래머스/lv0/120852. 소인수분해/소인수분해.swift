import Foundation

func solution(_ n:Int) -> [Int] {
    var N = n
    var result: Set<Int> = []
    
    for i in 2...n {
        if N % i == 0 {
            result.update(with: i)
            
            while N % i == 0 {
                N /= i
            }
        }
        if N == 1 { break }
    }
    return result.sorted()
}