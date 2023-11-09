import Foundation

let N = Int(readLine()!)!
var list = [String: Int]()

for _ in 0..<N {
    let input = readLine()!
    
    if !list.keys.contains(input) {
        list.updateValue(1, forKey: input)
    } else {
        list[input]! += 1
    }
}

let maxBook = list.sorted{ $0.key < $1.key }.max{ $0.value < $1.value }!
print(maxBook.key)