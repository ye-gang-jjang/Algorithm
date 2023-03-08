import Foundation

var check : [Bool] = []

var arr: [Bool] = Array(repeating: false, count: 30)

//for i in 0..<30{
//    check[i] = 0
//}

for _ in 0..<28{
    arr[Int(readLine()!)!-1] = true
}

for k in 0..<30{
    if arr[k] == false{
        print(k+1)
    }
}
