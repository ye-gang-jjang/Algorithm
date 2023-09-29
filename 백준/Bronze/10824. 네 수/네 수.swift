let input = readLine()!.split(separator: " ").map{ String($0) }
let (A, B, C, D) = (input[0], input[1], input[2], input[3])
let AB = Int(A+B)!, CD = Int(C+D)!

print(AB+CD)