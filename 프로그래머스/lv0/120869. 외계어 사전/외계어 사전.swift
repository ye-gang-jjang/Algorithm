import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    
    for i in dic {
        var count = 0
        
        for j in spell {
            if i.contains(j) {
                count += 1
                
                if spell.count == count {
                    return 1
                    break
                }
            }
        }
    }
    return 2
}