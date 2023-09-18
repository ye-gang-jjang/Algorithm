let D = Int(readLine()!)!
let carNumber = readLine()!.split(separator: " ").map{ Int($0)! }
print(carNumber.filter{ $0 == D }.count)