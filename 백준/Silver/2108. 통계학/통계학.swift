import Foundation

let N = Int(readLine()!)!
var arr = [Int]()
var dict = [Int: Int]()


for _ in 0..<N {
    let num = Int(readLine()!)!
    arr.append(num)
    dict[num, default: 0] += 1
}

// 산술 평균
let sum = arr.reduce(0, +)
let avg = Double(sum) / Double(N)
print(Int(round(avg)))

// 중앙값
arr.sort()
print(arr[N/2])

// 최빈값
let maxValue = dict.max(by: {$0.value < $1.value})!.value
var mode = dict.filter({ $0.value == maxValue}).keys.sorted()
print(mode.count > 1 ? mode[1] : mode[0])

//범위
print("\(arr.max()! - arr.min()!)")