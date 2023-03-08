import Foundation

let N = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

let min = arr.min()!
let max = arr.max()!

print(min,max)