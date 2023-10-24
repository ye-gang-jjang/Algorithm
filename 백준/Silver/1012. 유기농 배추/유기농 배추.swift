import Foundation

class Main {
    var M = 0
    var N = 0
    var T = 0
    var K = 0
    let d4i = [-1, 1, 0, 0]
    let d4j = [0, 0, -1, 1]

    func solve() {
        T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            M = input[0]
            N = input[1]
            K = input[2]

            var map = Array(repeating: Array(repeating: 0, count: N), count: M)
            var visited = Array(repeating: Array(repeating: 0, count: N), count: M)

            for _ in 0..<K {
                let coordinates = readLine()!.split(separator: " ").map { Int($0)! }
                let x = coordinates[0]
                let y = coordinates[1]
                map[x][y] = 1
            }

            let r = findMin(map: map, visited: &visited)
            print(r)
        }
    }

    func findMin(map: [[Int]], visited: inout [[Int]]) -> Int {
        var r = 0

        for i in 0..<M {
            for j in 0..<N {
                if map[i][j] == 1 && visited[i][j] == 0 {
                    bfs(xs: i, ys: j, map: map, visited: &visited)
                    r += 1
                }
            }
        }

        return r
    }

    func isInMap(x: Int, y: Int) -> Bool {
        return (0 <= x && x < M) && (0 <= y && y < N)
    }

    func bfs(xs: Int, ys: Int, map: [[Int]], visited: inout [[Int]]) {
        visited[xs][ys] = 1

        var al = [(xs, ys)]

        while al.count > 0 {
            let xy = al.removeFirst()
            let x = xy.0
            let y = xy.1

            for di in 0..<d4i.count {
                let dx = x + d4i[di]
                let dy = y + d4j[di]

                if isInMap(x: dx, y: dy) {
                    if map[dx][dy] == 1 && visited[dx][dy] == 0 {
                        al.append((dx, dy))
                        visited[dx][dy] = 1
                    }
                }
            }
        }
    }

    static func main() {
        let main = Main()
        main.solve()
    }
}

Main.main()