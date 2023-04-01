import Foundation

let N = readLine()!.split(separator: " ").map{Double($0)!}
let result = pow(N[0], 2) + pow(N[1], 2) + pow(N[2], 2) + pow(N[3], 2) + pow(N[4], 2)
print(Int(result)%10)
