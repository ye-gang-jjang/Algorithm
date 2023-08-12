var maxPerson: Int = 0
var presentPerson: Int = 0

for _ in 0..<4 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let trainOut = input[0]
    let trainIn = input[1]
    
    presentPerson -= trainOut
    presentPerson += trainIn
    
    if presentPerson > maxPerson {
        maxPerson = presentPerson
    }
}

print(maxPerson)