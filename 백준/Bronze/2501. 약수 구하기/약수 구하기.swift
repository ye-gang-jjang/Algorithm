let input = readLine()!.split(separator: " ").map{Int($0)!}

let N = input[0]
let K = input[1]
var count = 0

for i in 1...N {
    if N % i == 0 {
        count += 1
        
        if count == K {
            print(i)
        }
    }
}

if count < K {
    print(0)
}