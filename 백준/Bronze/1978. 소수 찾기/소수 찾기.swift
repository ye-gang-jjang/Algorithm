import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}

let result = input.filter{(i:Int)in i != 1 && Array(2..<i).filter{i%$0==0}.count==0}.count

print(result)