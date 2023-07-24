let N = Int(readLine()!)!
var userNames = Set<String>()
var count = 0

for _ in 0..<N {
    let input = readLine()!
    
    if input == "ENTER" {
        userNames.removeAll()
        continue
    }
    
    count += userNames.contains(input) ? 0 : 1
    userNames.insert(input)
}

print(count)