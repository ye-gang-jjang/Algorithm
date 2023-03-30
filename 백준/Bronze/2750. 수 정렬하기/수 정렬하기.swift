let N = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<N {
    let input = Int(readLine()!)!
    arr.append(input)
}
arr.sort(by: <)

for i in 0..<N {
    print(arr[i])
}