import Foundation

let input = readLine()!.split(separator: " ")
let A = Int(String(input[0].reversed()))!
let B = Int(String(input[1].reversed()))!

if A > B {
    print(A)
} else {
    print(B)
}