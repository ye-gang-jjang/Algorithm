import Foundation

let s = Array(readLine()!)
var count0 = 0
var count1 = 0

if s[0] == "0" { count0 = 1 } else { count1 = 1 }

for i in 1..<s.count {
    if s[i] != s[i - 1] {
        if s[i] == "0" { count0 += 1 }
        else { count1 += 1 }
    }
}

print(min(count0, count1))