import Foundation

var N = Int(readLine()!)!

func fibo(num: Int) -> Int {
    
    if num == 0 {
        return 0
    } else if num == 1 {
        return 1
    }
    
    var result = fibo(num: num-1) + fibo(num: num-2)
    return result
}

print(fibo(num: N))