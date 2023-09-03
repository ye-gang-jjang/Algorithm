import Foundation

let N = Int(readLine()!)!
var fileName = readLine()!.map{String($0)}

for _ in 0..<N-1 {
    let input = readLine()!.map{String($0)}
    
    for (idx, value) in input.enumerated() {
        if fileName[idx] != value {
            fileName[idx] = "?"
        }
    }
}

print(fileName.joined())