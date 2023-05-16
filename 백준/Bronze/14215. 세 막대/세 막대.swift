let input = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
let result = input[0] + input[1] + min(input[2], input[0] + input[1] - 1)
print(result)