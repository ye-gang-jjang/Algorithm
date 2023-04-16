import Foundation

func isPrime(num: Int) -> Bool {
    if(num<4) {
        return num == 1 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if(num % i == 0) { return false }
    }
    return true
}

func solution(_ n:Int) -> Int {
    if n < 4 {
        return 0
    }
    return (4...n).filter { !isPrime(num: $0) }.count
}