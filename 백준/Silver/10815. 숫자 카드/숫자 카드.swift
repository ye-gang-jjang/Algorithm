let N = Int(readLine()!)!
var nSet = Set(readLine()!.split(separator: " ").map{ Int($0)! })

let M = Int(readLine()!)!
var mArr = readLine()!.split(separator: " ").map{ Int($0)! }

for card in mArr {
    print(nSet.contains(card) ? 1 : 0, terminator: " ")
}