let N = Int(readLine()!)!
var arr = [(Int, Int, String)]()

for i in 0..<N {
    let input = readLine()!.split(separator: " ")
    let age = Int(input[0])!
    let name = String(input[1])
    
    arr.append((i, age, name))
}

let sortMembers = arr.sorted {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
}

for member in sortMembers {
    print(member.1, member.2)
}