import Foundation

while let input = readLine() {
    var str = Array(input)
    var lower = 0
    var upper = 0
    var number = 0
    var space = 0
    
    for i in str {
        if i >= "a" && i <= "z" {
            lower += 1
        } else if i >= "A" && i <= "Z" {
            upper += 1
        } else if i == " " {
            space += 1
        } else {
            number += 1
        }
    }
    print("\(lower) \(upper) \(number) \(space)")
}