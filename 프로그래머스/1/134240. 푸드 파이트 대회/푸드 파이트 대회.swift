import Foundation

func solution(_ food:[Int]) -> String {
    var foods = ""
    
    for i in 1..<food.count {
        if food[i] / 2 > 0 {
            for _ in 0..<(food[i]/2) {
                foods.append("\(i)")
            }
        }
    }
    return foods+"0"+foods.reversed()
}