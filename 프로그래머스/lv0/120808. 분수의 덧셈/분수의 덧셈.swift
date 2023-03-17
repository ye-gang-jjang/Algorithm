import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    }
    return gcd(b, a % b)
}

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var maxDenom = denom1 * denom2
    var maxNumer = numer1 * denom2 + numer2 * denom1
    
    var gcdValue = gcd(maxDenom, maxNumer)
    var result = [maxNumer / gcdValue, maxDenom / gcdValue]
    return result
}