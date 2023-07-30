// 시험장 개수 N
let N = Int(readLine()!)!
var room = Array(repeating: 0, count: N)

var input = readLine()!.split(separator: " ").map{ Int($0)! }

for i in 0..<N {
    room[i] = input[i]
}

// BC
let BC = readLine()!.split(separator: " ").map{ Int($0)! }
let B = BC[0], C = BC[1]

var cnt = 0

for i in 0..<N {
    room[i] -= B
    cnt += 1
    
    if room[i] > 0 {
        cnt += room[i] / C
        
        if room[i] % C > 0 {
            cnt += 1
        }
    }
}

print(cnt)