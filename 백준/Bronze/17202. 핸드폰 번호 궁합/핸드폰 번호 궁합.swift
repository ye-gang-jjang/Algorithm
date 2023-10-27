import Foundation

let inputA = readLine()!
let inputB = readLine()!

var result = ""

for i in 0..<8 {
    let indexA = inputA.index(inputA.startIndex, offsetBy: i)
    let indexB = inputB.index(inputB.startIndex, offsetBy: i)
    
    let charA = inputA[indexA]
    let charB = inputB[indexB]
    
    let digitA = Int(String(charA))!
    let digitB = Int(String(charB))!
    
    result += String(digitA)
    result += String(digitB)
}


while result.count > 2 {
    var temp = ""

    for i in 0..<result.count - 1 {
        let index1 = result.index(result.startIndex, offsetBy: i)
        let index2 = result.index(result.startIndex, offsetBy: i + 1)

        let digit1 = Int(String(result[index1]))!
        let digit2 = Int(String(result[index2]))!
        let sum = digit1 + digit2
        temp += String(sum % 10)
    }

    result = temp
}

print(result)