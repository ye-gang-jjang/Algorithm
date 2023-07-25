import Foundation

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NM[0], M = NM[1]

var dict = [String: Int]()

for _ in 0..<N {
    let input = readLine()!
    if input.count < M {
        continue
    }
    dict[input, default: 0] += 1
}

let sortedDict = dict.sorted {
    if $0.value == $1.value {
        if $0.key.count == $1.key.count {
            return $0.key < $1.key
        }
        return $0.key.count > $1.key.count
    }
    return $0.value > $1.value
}

for word in sortedDict {
    print(word.key)
}