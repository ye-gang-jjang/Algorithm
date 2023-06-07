import Foundation

let N = readLine()!
var arr = Array(repeating: 0, count: 10)

for i in N {
    switch i {
    case "0" :
        arr[0] += 1
    case "1" :
        arr[1] += 1
    case "2" :
        arr[2] += 1
    case "3" :
        arr[3] += 1
    case "4" :
        arr[4] += 1
    case "5" :
        arr[5] += 1
    case "6" :
        arr[9] += 1
    case "7" :
        arr[7] += 1
    case "8" :
        arr[8] += 1
    case "9" :
        arr[9] += 1
    default:
        break
    }
}

if arr[9] != 0 {
    arr[9] = Int(round(Double(arr[9]) / 2))
}

print(arr.max()!)
