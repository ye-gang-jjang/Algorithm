import Foundation

let T = Int(readLine()!)!
var result : String = ""

for _ in 0..<T {
    let str = readLine()!.split(separator: " ")
    str.forEach {
        result.append(String($0.reversed()) + " ")
    }
    print(result)
    result.removeAll()
}