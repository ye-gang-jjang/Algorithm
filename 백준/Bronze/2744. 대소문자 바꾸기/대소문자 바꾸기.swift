import Foundation

let input = readLine()!

let lowInput = input.lowercased()
let uppInput = input.uppercased()
var str = ""

for i in input.indices {
    if input[i] == lowInput[i] {
        str.append(uppInput[i])
    } else {
        str.append(lowInput[i])
    }
}

print(str)