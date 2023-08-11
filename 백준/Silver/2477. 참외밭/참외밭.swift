let K = Int(readLine()!)!

var lines = [(dir: Int, len: Int)]()
var dict = [Int: Int]()

for _ in 0..<6 {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let direction = input[0], length = input[1]
    lines.append((direction, length))
    dict[direction, default: 0] += 1
}

var maxArea = 1
var minArea = 1

for i in 0..<6 {
    if dict[lines[i].dir]! == 1 {
        maxArea *= lines[i].len
        continue
    }
    
    if lines[i].dir == lines[(i+2) % 6].dir {
        minArea *= lines[(i+1)%6].len
    }
}

print((maxArea-minArea)*K)