var input = readLine()!.split(separator: " ").map{ Int($0)! }
input.sort(by: >)
print(input[1])