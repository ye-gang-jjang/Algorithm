let N = Int(readLine()!)!
var arr = [String]()
var setArr = Set<String>()

for _ in 0..<N {
    let input = readLine()!
    setArr.insert(input)
}

arr = Array(setArr).sorted(by: {$0 < $1}).sorted(by: {$0.count < $1.count})

for i in arr {
    print(i)
}