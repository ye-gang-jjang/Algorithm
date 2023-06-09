let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let M = input[1]

var set = Set<String>()
var result = 0

for _ in 0..<N {
    let str = readLine()!
    set.insert(str)
}

for _ in 0..<M {
    let word = readLine()!
    result += set.contains(word) ? 1 : 0
}

print(result)