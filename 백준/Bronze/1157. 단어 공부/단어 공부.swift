import Foundation
// 대,소문자
//uppercased() = 대문자로 반영
//lowercased() = 소문자로 반영
let input = readLine()!.uppercased()

var dict: [String:Int] = [:]

input.forEach {
    if dict[String($0)] == nil {
        dict[String($0)] = 1
    } else {
        dict[String($0)]! += 1
    }
}

var result = [String]()

for key in dict.keys {
    if dict[key] == dict.values.max() {
        result.append(key)
    }
}
print(result.count == 1 ? result[0] : "?")
