import Foundation

let N = Int(readLine()!)!
print(countOpenWindows(N))

func countOpenWindows(_ n: Int) -> Int {
    var count = 0
    var i = 1
    
    while i * i <= n {
        count += 1
        i += 1
    }
    
    return count
}