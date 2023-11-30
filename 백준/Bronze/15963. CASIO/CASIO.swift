let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (N, M) = (input[0], input[1])

print(N == M ? 1 : 0)