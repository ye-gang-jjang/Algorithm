let N = Int(readLine()!)! - 1
var arr = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +) + (N * 8)

print(arr/24, arr%24)