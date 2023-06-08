var input = readLine()!.split(separator: "-")
var sum = [Int]()
var result = 0

for i in 0..<input.count {
    let n = input[i].split(separator: "+").map{ Int(String($0))! }
    sum.append(n.reduce(0, +))
}

for i in 0..<sum.count {
    if i == 0 {
        result += sum[i]
    } else {
        result -= sum[i]
    }
}

print(result)
