var arr = Array(repeating: 0, count: 5)

for i in 0..<5 {
    let input = Int(readLine()!)!
    arr[i] = input
}

let burger = arr[0...2].sorted()
let drink = arr[3...4].sorted()

print(burger[0] + drink[0] - 50)