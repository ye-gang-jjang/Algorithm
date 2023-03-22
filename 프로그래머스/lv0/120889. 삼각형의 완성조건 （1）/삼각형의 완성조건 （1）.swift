import Foundation

func solution(_ sides:[Int]) -> Int {
    let arrSort = sides.sorted()
    
    if arrSort[2] < arrSort[0] + arrSort[1] {
        return 1
    } 
    else {
        return 2
    }
}