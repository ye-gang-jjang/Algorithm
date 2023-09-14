import Foundation

var MD = readLine()!.split(separator: " ").map{ Int($0)! }
var M = MD[0], D = MD[1]

var day = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
var lastDay = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for i in 0..<M {
    D += lastDay[i]
}

D -= lastDay[M-1]
print(day[D%7])