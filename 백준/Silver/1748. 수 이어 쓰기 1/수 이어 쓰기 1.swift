let N = Int(readLine()!)!
var cnt = 0
var i = 1

while (i <= N) {
    cnt += (N-i) + 1
    i = i * 10
}

print(cnt)