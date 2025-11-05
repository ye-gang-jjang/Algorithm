import Foundation

let T = Int(readLine()!)!
var output: [String] = [String]()

for _ in 0..<T {
    let s = readLine()!
    let (res, cnt) = solveOne(s)
    output.append("\(res) \(cnt)")
}

print(output.joined(separator: "\n"))

func solveOne(_ s: String) -> (Int, Int) {
    let a = Array(s)
    var calls = 0
    
    func rec(_ l: Int, _ r: Int) -> Int {
        calls += 1
        
        if l >= r { return 1 }
        if a[l] != a[r] { return 0 }
        
        return rec(l + 1, r - 1)
    }
    
    let result = rec(0, a.count - 1)
    
    return (result, calls)
}