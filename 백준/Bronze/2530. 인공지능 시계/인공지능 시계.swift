import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
var (A, B, C) = (input[0], input[1], input[2])
var D = Int(readLine()!)!

B += D / 60
C += D % 60

B += C / 60
C %= 60

A += B / 60
B %= 60

A %= 24

print(A,B,C)