import Foundation

let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!
    
    let last = Int(String(input.last!))!
    print(last % 2 == 0 ? "even" : "odd")
}