import Foundation

let input = Int(readLine()!)!
var stairs = [Int]()
var arr = Array(repeating: 0, count: input)

for _ in 0..<input {
    stairs.append(Int(String(readLine()!))!)
}

if input == 1 {
    print(stairs[0])
} else if input == 2 {
    print(stairs[0] + stairs[1])
} else if input == 3 {
    print(max(stairs[0] + stairs[2], stairs[1] + stairs[2]))
} else {
    arr[0] = stairs[0]
    arr[1] = max(stairs[0] + stairs[1], stairs[1])
    arr[2] = max(stairs[0] + stairs[2], stairs[1] + stairs[2])
    
    for i in 3..<stairs.count {
        arr[i] = max(stairs[i] + arr[i-2], stairs[i] + stairs[i-1] + arr[i-3])
    }
    print(arr[arr.count-1])
}