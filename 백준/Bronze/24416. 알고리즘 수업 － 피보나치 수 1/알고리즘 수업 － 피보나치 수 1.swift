let n = Int(readLine()!)!
var arr = [0, 1]

for i in 2...40 {
    arr.append(arr[i-2] + arr[i-1])
}

print(arr[n], n-2)