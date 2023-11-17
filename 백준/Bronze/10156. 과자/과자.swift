let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (K, N, M) = (input[0], input[1], input[2])

print((K*N) - M < 0 ? 0 : (K*N) - M)