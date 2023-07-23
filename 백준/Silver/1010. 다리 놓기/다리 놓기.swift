let T = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: 31), count: 31)

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    print(river(input[1], input[0]))
}

func river(_ x: Int, _ y: Int) -> Int {
    if x == y || y == 0 {
        return 1
    }
    
    if arr[x][y] != 0 {
        return arr[x][y]
    }
    
    arr[x][y] = river(x-1, y-1) + river(x-1, y)
    return arr[x][y]
}