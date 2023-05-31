let n = Int(readLine()!)!

func fibo2(_ n: Int) -> Int {
    var cache = [0, 1]
    
    if n > 1 {
        for num in 2...n {
            cache.append(cache[num - 2] + cache[num - 1])
        }
    } else {
        return n
    }
    
    return cache[n]
}

print(fibo2(n))