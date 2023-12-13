import Foundation

let N = Int(readLine()!)!
var result = Set<Int>()

let arr = readLine()!.split(separator: " ").map { result.insert(Int($0)!) }

result.sorted().map { print($0, terminator: " ")}