import Foundation

let T = Int(readLine()!)!

let aDic = [
    5000000: [1],
    3000000: Array(2...3) ,
    2000000: Array(4...6) ,
    500000: Array(7...10) ,
    300000: Array(11...15) ,
    100000: Array(16...21)
]

let bDic = [
    5120000: [1],
    2560000: Array(2...3),
    1280000: Array(4...7),
    640000: Array(8...15),
    320000: Array(16...31)
]

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (a, b) = (input[0], input[1])

    var aValue = 0, bValue = 0
    
    if (a != 0 && a <= 100) {
        for (k, v) in aDic {
            if v.contains(a) {
                aValue = k
            }
        }
    }
    
    if b != 0 && b <= 64 {
        for (k, v) in bDic {
            if v.contains(b) {
                bValue = k
            }
        }
    }
    
    let result = aValue + bValue
    
    print(result)
}