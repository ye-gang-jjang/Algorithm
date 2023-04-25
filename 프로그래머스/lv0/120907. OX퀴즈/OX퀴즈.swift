import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result = [String]()
    
    for i in 0 ..< quiz.count {
        let quizList = quiz[i].split(separator: " ").map{String($0)}
        
        let mathSign = quizList[1]
        
        let num1 = Int(quizList[0])!
        let num2 = Int(quizList[2])!
        let num3 = Int(quizList[4])!
        
        if mathSign == String("+") {
            if num1 + num2 == num3 {
                result.append("O")
            } else {
                result.append("X")
            }
        } else {
            if num1 - num2 == num3 {
                result.append("O")
            } else {
                result.append("X")
            }
        }
    }
    return result
}