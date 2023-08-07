let N = Int(readLine()!)!
let times = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()

var result = 0
var cumulativeTime = 0

for time in times {
    cumulativeTime += time
    result += cumulativeTime
}

print(result)