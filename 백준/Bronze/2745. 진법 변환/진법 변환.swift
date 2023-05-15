let input = readLine()!.split(separator: " ").map{ String($0) }
let N = input[0]
let B = Int(input[1])!
let result = Int(N, radix: B)!

print(result)