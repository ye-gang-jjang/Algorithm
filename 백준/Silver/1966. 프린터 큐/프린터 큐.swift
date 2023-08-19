import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    let M = NM[1]
    
    var printCnt = 0
    
    var tempPriorityList = readLine()!.split(separator: " ").map{ Int($0)! }
    var priorityList: [(Int, Int)] = []
    
    for (index, priority) in tempPriorityList.enumerated() {
        let tuple = (priority, index)
        priorityList.append(tuple)
    }
    
    tempPriorityList.sort()
    
    while true {
        if priorityList[0].0 == tempPriorityList.max() {
            printCnt += 1
            if priorityList[0].1 == M {
                print(printCnt)
                break
            } else {
                priorityList.removeFirst()
                tempPriorityList.popLast()
            }
        } else {
            priorityList.append(priorityList.removeFirst())
        }
    }
}