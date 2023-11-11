import Foundation

let alphabet = ["A": 3, "B": 2, "C": 1, "D": 2, "E": 3, "F": 3, "G": 2, "H": 3, "I": 3, "J": 2,
                "K": 2, "L": 1, "M": 2, "N": 2, "O": 1, "P": 2, "Q": 2, "R": 2, "S": 1, "T": 2,
                "U": 1, "V": 1, "W": 1, "X": 2, "Y": 2, "Z": 1]

let A = readLine()!.map{ String($0) }
let B = readLine()!.map{ String($0) }
var strLen = (A.count + B.count)

var nameArr = [Int]()
var temp = [Int]()

for i in 0..<A.count {
    let AKey = A[i]
    let BKey = B[i]
    
    nameArr.append(alphabet[AKey]!)
    nameArr.append(alphabet[BKey]!)
}

while nameArr.count != 2 {
    for i in 0..<nameArr.count - 1 {
        let num = (nameArr[i] + nameArr[i+1]) % 10
        temp.append(num)
    }
    
    nameArr = temp
    temp.removeAll()
}

print(nameArr.map{ String($0) }.joined(separator: ""))