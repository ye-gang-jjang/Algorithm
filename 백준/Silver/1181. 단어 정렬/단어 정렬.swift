let N = Int(readLine()!)!
var arr = [String]()
var setArr = Set<String>()

for _ in 0..<N { setArr.insert(readLine()!) }
arr = Array(setArr).sorted(by: {$0 < $1}).sorted(by: {$0.count < $1.count})
print(arr.map{ String($0) }.joined(separator: "\n"))