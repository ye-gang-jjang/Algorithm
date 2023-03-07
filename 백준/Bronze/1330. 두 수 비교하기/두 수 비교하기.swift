import Foundation

let input = readLine()!.split(separator: " ")
let A = Int(input[0])!
let B = Int(input[1])!

if A > B {
    print(">")
}
else if A < B {
    print("<")
}
else {
    print("==")
}