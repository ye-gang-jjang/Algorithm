let T = Int(readLine()!)!
var arr = [[Int]]()

for i in 0..<T {
    arr.append(readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >))
    print(arr[i][2])
}