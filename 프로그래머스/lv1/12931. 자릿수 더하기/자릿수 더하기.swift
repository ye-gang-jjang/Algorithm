import Foundation

func solution(_ N:Int) -> Int {
    var result = String(N).map{ Int(String($0))! }
    return result.reduce(0, +)
}