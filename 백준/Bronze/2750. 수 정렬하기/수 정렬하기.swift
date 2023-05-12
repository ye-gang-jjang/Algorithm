let N = Int(readLine()!)!

var arr = Array(repeating: false, count: 2001)

for _ in 1...N {
    let num = Int(readLine()!)!
    arr[num+1000] = true
}

for i in 0..<2001 {
    if arr[i] {
        print(i-1000)
    }
}