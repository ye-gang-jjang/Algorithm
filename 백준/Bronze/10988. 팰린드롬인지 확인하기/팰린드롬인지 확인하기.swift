import Foundation

let input = readLine()!

let inputReversed = String(input.reversed())

if input == inputReversed {
    print("1")
} else {
    print("0")
}