import Foundation

var str = readLine()!
let M = Int(readLine()!)!
var rightLetters = ""

for _ in 0..<M {
    let command = readLine()!
    
    switch command {
    case "L" :
        if !str.isEmpty {
            rightLetters.append(str.popLast()!)
        }
    case "D" :
        if !rightLetters.isEmpty {
            str.append(rightLetters.popLast()!)
        }
    case "B" :
        if !str.isEmpty {
            str.removeLast()
        }
    default:
        str.append(command.last!)
    }
}

print(String(str+rightLetters.reversed()))