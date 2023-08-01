import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var nameToYearning = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    var result = [Int]()
    
    for pic in photo {
        var score = 0
        
        for person in pic {
            if let yearning = nameToYearning[person] {
                score += yearning
            }
        }
        result.append(score)
    }
    
    return result
}