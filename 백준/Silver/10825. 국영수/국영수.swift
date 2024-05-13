let N = Int(readLine()!)!
var arr = [(String, Int, Int, Int)]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    arr.append(
        (String(input[0]), Int(input[1])!, Int(input[2])!, Int(input[3])!)
    )
}

arr.sort {
    $0.1 == $1.1 ?
    $0.2 == $1.2 ?
    $0.3 == $1.3 ?
    $0.0 < $1.0 :
    $0.3 > $1.3 :
    $0.2 < $1.2 :
    $0.1 > $1.1
}

print(arr.map{ String($0.0) }.joined(separator: "\n"))