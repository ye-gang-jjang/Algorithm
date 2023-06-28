let N = Int(readLine()!)!
let NArr = readLine()!.split(separator: " ").map{ Int($0)! }

let M = Int(readLine()!)!
let MArr = readLine()!.split(separator: " ").map{ Int($0)! }

var dic = [Int: Int]()
var result = ""

for num in NArr {
    dic[num] = dic.keys.contains(num) ? dic[num]! + 1 : 1
}


for num in MArr {
    if dic.keys.contains(num) {
        result += String(dic[num]!)
    } else {
        result += String(0)
    }
    result += " "
}

print(result)