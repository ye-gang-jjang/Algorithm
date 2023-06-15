import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
let B = input[2]

var ground = Array(repeating: [Int](), count: N)
var high = 0
var low = 256
var result = Array(repeating: 0, count: 2)

for i in 0..<N {
    ground[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

for i in 0..<N {
    for j in 0..<M {
        if ground[i][j] <= low {
            low = ground[i][j]
        }
        if ground[i][j] >= high {
            high = ground[i][j]
        }
    }
}

for i in stride(from: high, through: low, by: -1) {
    var tmpTime = 0
    var item = B
    for j in 0..<N {
        for k in 0..<M {
            if ground[j][k] < i {
                item -= (i - ground[j][k])
                tmpTime += (i - ground[j][k])
            } else if ground[j][k] > i {
                item += (ground[j][k] - i)
                tmpTime += (ground[j][k] - i) * 2
            } else {
                continue
            }
        }
    }
    if item < 0 {
        continue
    }
    if result[0] == 0 {
        result[0] = tmpTime
        result[1] = i
    } else {
        if result[0] > tmpTime {
            result[0] = tmpTime
            result[1] = i
        } else if result[0] == tmpTime {
            result[1] = max(result[1], i)
        }
    }
}

print(result[0], result[1])
