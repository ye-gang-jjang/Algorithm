import Foundation

let input = readLine()!.split(separator: " ").map{ Int64($0)! }
let A = input[0], B = input[1]

if A == B {
    print(0)
} else if A > B {
    let num = Array(B+1..<A)
    print(num.count)
    print(num.map{ String($0) }.joined(separator: " "))
} else {
    let num = Array(A+1..<B)
    print(num.count)
    print(num.map{ String($0) }.joined(separator: " "))
}