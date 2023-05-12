let N = Int(readLine()!)!

var arr = Array(repeating: false, count: 2000001)
var str = ""

for _ in 1...N {
    let num = Int(readLine()!)!
    arr[num + 1000000] = true
}

for i in 0..<2000001 {
    if arr[i] {
        str += "\(i-1000000)\n"
    }
}

print(str)
