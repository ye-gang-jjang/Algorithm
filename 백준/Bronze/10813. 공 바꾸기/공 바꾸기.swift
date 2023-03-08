import Foundation

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NM[0]
let M = NM[1]

var arr = Array<Int>(1...N)

for _ in 1...M {
    var ij = readLine()!.split(separator: " ").map{ Int($0)! }
    let i = ij[0]-1
    let j = ij[1]-1
    var temp = 0
    
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
    
}
arr.forEach{ print($0, terminator: " ") }