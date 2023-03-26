import Foundation

func solution(_ n:Int) -> Int {
    let square: Int = Int(pow(_: Double(n), _: 0.5))
    
    return Int(square * square) == n ? 1 : 2
}