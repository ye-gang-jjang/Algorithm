let NM = readLine()!.split(separator: " ").map{ Int($0)! }
var arr = [0] + readLine()!.split(separator: " ").map { Int($0)! }

for i in 1...NM[0] {
    arr[i] += arr[i - 1]
}

for _ in 0..<NM[1] {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    print(arr[input[1]] - arr[input[0] - 1])
}