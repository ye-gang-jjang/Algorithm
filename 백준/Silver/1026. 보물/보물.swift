let N = Int(readLine()!)!

var arr1 = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
var arr2 = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >)
var result = 0

for i in 0..<N {
    result += arr1[i] * arr2[i]
}

print(result)