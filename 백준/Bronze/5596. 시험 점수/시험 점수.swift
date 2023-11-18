let input1 = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
let input2 = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)

print(input1 >= input2 ? input1 : input2)