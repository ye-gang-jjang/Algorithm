import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result: Int64 = 0

    for i in 1...count {
        result += Int64(price) * Int64(i)
    }
    
    return money <= result ? Int64(result) - Int64(money) : 0
}
