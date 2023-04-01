var X = Int(readLine()!)!
var count = 1

while X > count {
    X -= count
    count += 1
}

if count % 2 == 1 {
    print("\(count - X + 1)/\(X)")
} else {
    print("\(X)/\(count - X + 1)")
}