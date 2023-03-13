import Foundation

let arr = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

var input = readLine()!

for i in arr {
    input = input.replacingOccurrences(of: i, with: "a")
}

print(input.count)