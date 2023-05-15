let input = readLine()!.split(separator: " ")
let N = input[0]
let B = Int(input[1])!
let result = Int(N, radix: B)!

print(result)