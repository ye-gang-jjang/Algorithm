let input = readLine()!.split(separator: " ").map{ Int($0)! }
var (N, K) = (input[0], input[1])
var coin = [Int]()
var cnt = 0

for _ in 0..<N {
    coin.append(Int(readLine()!)!)
}

for i in (0..<N).reversed() {
    if coin[i] <= K {
        cnt += (K / coin[i])
        K %= coin[i]
    }
}

print(cnt)