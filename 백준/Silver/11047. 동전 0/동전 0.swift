let input = readLine()!.split(separator: " ").map{ Int($0)! }
var (N, K) = (input[0], input[1])
var coin = [Int]()
var cnt = 0

for _ in 0..<N {
    coin.append(Int(readLine()!)!)
}

coin.sort(by: >)

for i in 0..<N {
    if coin[i] <= K {
        cnt += (K / coin[i])
        K %= coin[i]
    }
}

print(cnt)