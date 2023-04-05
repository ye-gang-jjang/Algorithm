import Foundation

let N = Int(readLine()!)!
var count = 0
let input = readLine()!.split(separator: " ").map{Int($0)!}

for i in 0 ..< N {
    if input[i] == 1 {
        count += 1
        continue
    }
    
    for j in 2 ..< input[i] {
        if input[i] % j == 0 {
            count += 1
            break
        }
    }
}
print(input.count - count)