let n = Int(readLine()!)!

var fibo = [Int]()

for i in 0..<n {
    if i <= 1 {
        fibo.append(1)
    } else {
        fibo.append(fibo[i-1] + fibo[i-2])
    }
}

print(fibo[n-1])