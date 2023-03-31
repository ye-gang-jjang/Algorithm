import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

var absXW = abs(x - w)
var absYH = abs(y - h)

print(min(x, y, absXW, absYH))