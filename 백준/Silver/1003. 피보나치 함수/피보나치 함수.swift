let T = Int(readLine()!)!
var dp = [Int]()

for _ in 0..<T {
    let N = Int(readLine()!)!
    dp.append(N)
}

var result = [(Int,Int)](repeating: (0,0), count: 41)
result[0] = (1, 0)
result[1] = (0, 1)

/*
 result[i].0, result[i].1
 이건 (n, m)이렇게 있을 때 .0은 n, .1은 m을 가르킴
 */
for i in 2..<result.count {
    result[i] = (result[i-1].0 + result[i-2].0, result[i-1].1 + result[i-2].1)
}

for num in dp {
    print("\(result[num].0) \(result[num].1)")
}