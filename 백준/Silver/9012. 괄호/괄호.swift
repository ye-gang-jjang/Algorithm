let T = Int(readLine()!)!

for _ in 1...T {
    let input = readLine()!
    var cnt = 0
    
    for char in input {
        if char == "(" {
            cnt += 1
        } else {
            cnt -= 1
            if cnt < 0 {
                break
            }
        }
    }
    print(cnt == 0 ? "YES" : "NO")
}