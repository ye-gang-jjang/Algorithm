var arr = [[String]](repeating: Array(repeating: "", count: 15), count: 5)

for i in 0..<5 {
    let word = readLine()!.map{ String($0) }
    let lastIdx = word.count - 1
    arr[i].replaceSubrange(0..<lastIdx, with: word)
}

for i in 0..<15 {
    for j in 0..<5 {
        print(arr[j][i], terminator: "")
    }
}