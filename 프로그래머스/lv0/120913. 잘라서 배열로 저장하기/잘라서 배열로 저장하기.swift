import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    
    var result = [String]()
    var answer = ""
    
    for i in my_str {
        answer += String(i)
        
        if answer.count == n {
            result.append(answer)
            answer = ""
        }
    }
    
    if !answer.isEmpty {
        result.append(answer)
    }
    
    return result
}