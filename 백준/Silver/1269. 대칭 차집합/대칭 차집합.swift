let input = readLine()!.split(separator: " ").map{ Int($0)! }

let setA = Set(readLine()!.split(separator: " ").map{ Int($0)! })
let setB = Set(readLine()!.split(separator: " ").map{ Int($0)! })

var result = 0

for num in setA {
    if !setB.contains(num) {
        result += 1
    }
}

for num in setB {
    if !setA.contains(num) {
        result += 1
    }
}
print(result)