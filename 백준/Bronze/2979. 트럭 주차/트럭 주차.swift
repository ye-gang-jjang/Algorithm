let ABC = readLine()!.split(separator: " ").map{ Int($0)! }
let A = ABC[0], B = ABC[1], C = ABC[2]

var arr = Array(repeating: 0, count: 101)
var time = 0

for _ in 1...3 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let enter = input[0], out = input[1]
    
    for i in enter..<out {
        arr[i] += 1
    }
}

for i in 1...100 {
    switch arr[i] {
    case 1 :
        time += A
    case 2:
        time += B * 2
    case 3:
        time += C * 3
    default:
        continue
    }
}

print(time)