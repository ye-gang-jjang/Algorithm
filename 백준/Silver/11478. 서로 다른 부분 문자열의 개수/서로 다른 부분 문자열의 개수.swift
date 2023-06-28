let input = readLine()!.map{ String($0) }
var setStr = Set<String>()

for i in 0..<input.count {
    var str = ""
    for j in i..<input.count {
        str = str + input[j]
        setStr.insert(str)
    }
}

print(setStr.count)