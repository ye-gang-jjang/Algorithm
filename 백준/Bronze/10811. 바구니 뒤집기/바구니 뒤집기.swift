import Foundation

let inputNM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = inputNM[0]
let M = inputNM[1]

var arr = [Int] (1...N)

for _ in 0..<M {
    let inputIJ = readLine()!.split(separator: " ").map{ Int($0)! }
    let i = inputIJ[0]-1
    let j = inputIJ[1]-1
    
    for index in 0..<(j-i)/2+1 {
        let a = arr[i+index]
        let b = arr[j-index]
                
        arr[i+index] = b
        arr[j-index] = a
    }
}

print(arr.map{ String($0) }.joined(separator: " "))
