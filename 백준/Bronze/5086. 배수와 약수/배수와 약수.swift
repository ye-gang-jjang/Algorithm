import Foundation

while let input = readLine()?.split(separator: " ").map{ Int($0)! }, input != [0, 0] {
    var A = input[0]
    var B = input[1]
    
    if A % B == 0 {
        print("multiple")
    } else if B % A == 0 {
        print("factor")
    } else {
        print("neither")
    }
}