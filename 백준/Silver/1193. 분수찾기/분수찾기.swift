var X = Int(readLine()!)!
var count = 1

while true {
    X -= count
    
    if X <= 0 {
        break
    }
    count += 1
}

if count % 2 == 1 {
    print("\(-X+1)/\(X+count)")
} else {
    print("\(X+count)/\(-X+1)")
}