let input = readLine()!.split(separator: " ").map{ Int($0)! }
let R1 = input[0]
let S = input[1]
print(2*S - R1)