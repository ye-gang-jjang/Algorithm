import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let p = readLine()!
    let n = Int(readLine()!)!
    let arrN = readLine()!.dropFirst().dropLast().split(separator: ",").map{Int(String($0))!}
    
    var head = 0
    var tail = n-1
    var isReversed = false
    var isError = false
    
    for cmd in p {
        if cmd == "D" {
            if head > tail {
                isError = true
                break
            }
            isReversed ? (tail -= 1) : (head += 1)
            
        } else {
            isReversed.toggle()
        }
    }
    
    if isError {
        print("error")
    } else if head > tail {
        print("[]")
    } else {
        let result = arrN[head...tail].map{ String($0) }.joined(separator: ",")
        let reverseResult = arrN[head...tail].reversed().map{ String($0) }.joined(separator: ",")
        
        print(isReversed ? "[\(reverseResult)]" : "[\(result)]")
    }
}
