var N = Double(readLine()!)!
var grade = readLine()!.split(separator: " ").map{ Int($0)! }
var sumGrade = Double(grade.reduce(0, +))
var max = Double(grade.max()!)

print(sumGrade*100/max/N)