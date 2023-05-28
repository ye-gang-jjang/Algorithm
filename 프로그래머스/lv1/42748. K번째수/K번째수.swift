import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result = [Int]()
    
    for i in 0..<commands.count {
        let startIdx = commands[i][0]
        let endIdx = commands[i][1]
        let findIdx = commands[i][2]
        
        let sortArr = array[startIdx-1 ... endIdx-1].sorted()
        let num = sortArr[findIdx-1]
        result.append(num)
    }
    return result
}