import Foundation

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let (N,M) = (NM[0], NM[1])

var arr = [[Int]]()
let len = min(N,M)

for _ in 0..<N {
    let input = Array(readLine()!).map{Int(String($0))!}
    arr.append(input)
}

func findSqure(_ x: Int, _ y: Int, _ l: Int) -> Bool {
    return arr[x][y] == arr[x][y+l-1] && arr[x][y] == arr[x+l-1][y] && arr[x][y] == arr[x+l-1][y+l-1]
}

var ans = 1

outerLoop: for l in stride(from: len, to: 0, by: -1) {
    for i in 0 ... N-l {
        for j in 0 ... M-l {
            if findSqure(i, j,l) {
                ans = l*l
                break outerLoop
            }
        }
    }
}

print(ans)