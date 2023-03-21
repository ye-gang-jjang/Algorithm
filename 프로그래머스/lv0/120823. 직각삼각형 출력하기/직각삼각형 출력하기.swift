import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let nn = n[0]

for i in 1...nn {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}