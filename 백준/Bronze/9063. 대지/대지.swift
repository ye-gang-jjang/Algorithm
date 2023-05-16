let N = Int(readLine()!)!

var arrX = [Int]()
var arrY = [Int]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arrX.append(input[0])
    arrY.append(input[1])
}
let resultX = arrX.sorted(by: >)
let resultY = arrY.sorted(by: >)

print((resultX.first! - resultX.last!) * (resultY.first! - resultY.last!))