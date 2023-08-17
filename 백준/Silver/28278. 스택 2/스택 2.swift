import Foundation

let N = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let cmd1 = input[0]
    
    switch cmd1 {
    case 1 :
        let cmd2 = input[1]
        stack.append(cmd2)
    case 2 :
        print(stack.isEmpty ? -1 : stack.removeLast())
    case 3 :
        print(stack.isEmpty ? 0 : stack.count)
    case 4 :
        print(stack.isEmpty ? 1 : 0)
    case 5 :
        print(stack.isEmpty ? -1 : stack.last!)
    default:
        break
    }
}