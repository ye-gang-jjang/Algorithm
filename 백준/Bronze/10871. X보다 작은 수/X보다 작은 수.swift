import Foundation

let arr = readLine()!.split(separator: " ")
let X = Int(arr[1])!

print(readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }
    .filter { $0 < X }
    .map{ "\($0)" }
    .joined(separator: " ")
)