import Foundation
// 5분 = 300초, 1분 = 60초, 10초
var A = 0, B = 0, C = 0

var T = Int(readLine()!)!

A = T / 300; T %= 300
B = T / 60; T %= 60
C = T / 10; T %= 10

print(T == 0 ? "\(A) \(B) \(C)" : -1)