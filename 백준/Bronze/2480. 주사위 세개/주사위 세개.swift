var input = readLine()!.split(separator: " ")
let sort: () = input.sort()
let A = Int(input[0])!
let B = Int(input[1])!
let C = Int(input[2])!


if A == B && B == C {
    print("\(10000 + A*1000)")
}
else if A == B && A != C {
    print("\(1000 + A*100)")
}
else if A == C && A != B {
    print("\(1000 + A*100)")
}
else if B == C && A != C {
    print("\(1000 + B*100)")
}
else {
    print("\(C*100)")
}