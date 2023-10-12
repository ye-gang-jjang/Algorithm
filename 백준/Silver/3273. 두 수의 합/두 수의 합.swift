import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
let x = Int(readLine()!)!

var start = 0
var last = n-1
var cnt = 0

while (start < last) {
    let target = arr[start] + arr[last]
    
    if target == x {
        cnt += 1
        start += 1
        last -= 1
    } else if target > x {
        last -= 1
    } else {
        start += 1
    }
}

print(cnt)