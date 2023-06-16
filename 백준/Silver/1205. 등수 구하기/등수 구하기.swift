import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0], newP = input[1] ,P = input[2]

var score = [Int]()

if N > 0 {
    score = readLine()!.split(separator: " ").map{ Int($0)! }
} else {
    print(1)
    exit(0)
}

if N == P && newP <= score.last! {
    print(-1)
    exit(0)
}

var cnt = 0

for n in score {
    if n > newP {
        cnt += 1
    }
}

print(cnt+1)