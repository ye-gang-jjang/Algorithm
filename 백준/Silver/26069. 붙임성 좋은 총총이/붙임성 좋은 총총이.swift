let N = Int(readLine()!)!
var dance: Set<String> = ["ChongChong"]

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let A = input[0]
    let B = input[1]
    
    if dance.contains(A) || dance.contains(B) {
        dance.insert(A)
        dance.insert(B)
    }
}

print(dance.count)