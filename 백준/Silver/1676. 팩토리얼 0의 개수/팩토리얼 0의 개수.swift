var N = Int(readLine()!)!

var count = 0

while (N >= 5) {
    count += N/5
    N /= 5
}

print(count)