var arr = Array(repeating: 0, count: 3)

for i in 0...2 {
    arr[i] = Int(readLine()!)!
}

let sum = arr.reduce(0, +)

if arr[0] == 60 && arr[1] == 60 && arr[2] == 60 {
    print("Equilateral")
} else if sum == 180 && arr[0] == arr[1] || arr[1] == arr[2] || arr[0] == arr[2] {
    print("Isosceles")
} else if sum == 180 {
    print("Scalene")
} else {
    print("Error")
}