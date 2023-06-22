let NK = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NK[0]
let K = NK[1]

func bino_coef(_ N: Int, _ K: Int) -> Int {
    if K == 0 || N == K {
        return 1
    }
    return bino_coef(N-1, K) + bino_coef(N-1, K-1)
}

print(bino_coef(N, K))