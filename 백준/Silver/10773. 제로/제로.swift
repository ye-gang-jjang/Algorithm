let K = Int(readLine()!)!

var arr = [Int]()

for _ in 1...K {
    let n = Int(readLine()!)!
    
    if n != 0 {
        arr.append(n)
    } else {
        if !arr.isEmpty {
            arr.removeLast()
        }
    }
}
print(arr.reduce(0, +))