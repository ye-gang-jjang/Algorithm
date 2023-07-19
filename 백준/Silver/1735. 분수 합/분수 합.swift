import Foundation

let fractionOne = readLine()!.split(separator: " ").map{ Int($0)! }
let fractionTwo = readLine()!.split(separator: " ").map{ Int($0)! }

var oneOfNumerator = fractionOne[0]
var oneOfDenominator = fractionOne[1]

var twoOfNumerator = fractionTwo[0]
var twoOfDenominator = fractionTwo[1]

// 최대공약수
func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a%b)
}

// 최소공배수
func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b / gcd(a, b)
}

// 분모가 같을 때, 다를 때 처리
if oneOfDenominator == twoOfDenominator {
    var numerator = oneOfNumerator + twoOfNumerator
    var denominator = oneOfDenominator
    
    let gcdOfNum = gcd(numerator, denominator)
    numerator /= gcdOfNum
    denominator /= gcdOfNum
    
    print("\(numerator) \(denominator)")
} else {
    // 분모라는 변수에 최소공배수 값 넣어줌
    var denominator = lcm(oneOfDenominator, twoOfDenominator)

    // 분자들을 최소 공배수가 커진 만큼 조정
    oneOfNumerator *= (denominator/oneOfDenominator)
    twoOfNumerator *= (denominator/twoOfDenominator)

    // 분자값 더해주기
    var numerator = oneOfNumerator + twoOfNumerator
    
    // 기약분수로 바꾸기
    let gcdOfNum = gcd(numerator, denominator)
    numerator /= gcdOfNum
    denominator /= gcdOfNum

    // 보간법을 이용해 "분자 분모" 출력
    print("\(numerator) \(denominator)")
}