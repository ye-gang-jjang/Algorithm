let input = readLine()!.split(separator: " ")

let N = input[0]
let B = input[1]

let result = String(Int(N)!, radix: Int(B)!)

print(result.uppercased())