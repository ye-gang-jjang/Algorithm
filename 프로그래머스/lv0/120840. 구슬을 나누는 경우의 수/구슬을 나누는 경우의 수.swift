import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    
    if balls == share {
        return 1
    }
    
    let result = fac(balls) / (fac(balls - share) * fac(share))
    return Int(NSDecimalNumber(decimal: result))
}

func fac(_ n: Int) -> Decimal {
    var num: Decimal = Decimal(1)
    
    if n == 0 {
        return 1
    }
    
    for i in 1...n {
        num *= Decimal(i)
    }
    
    return num
}