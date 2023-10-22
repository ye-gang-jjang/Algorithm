import Foundation

let XY = readLine()!.split(separator: " ").map{ String($0) }
let revX = String(XY[0].reversed()), revY = String(XY[1].reversed())
var result = Int(revX)! + Int(revY)!
let revResult = String(String(result).reversed())

print(Int(revResult)!)