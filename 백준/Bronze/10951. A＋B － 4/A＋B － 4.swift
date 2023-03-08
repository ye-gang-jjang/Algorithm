import Foundation

while let input = readLine() {
    let arr = input.split(separator: " ")
    let A = Int(arr[0])!
    let B = Int(arr[1])!
    
    print(A+B)
}