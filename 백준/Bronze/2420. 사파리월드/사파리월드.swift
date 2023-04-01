import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
print(abs(NM[0] - NM[1]))