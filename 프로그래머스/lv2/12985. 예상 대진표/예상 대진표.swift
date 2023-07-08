import Foundation

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    var A = a
    var B = b
    
    var answer = 0
    
    while true {
        A = A%2 == 0 ? A/2 : (A+1)/2
        B = B%2 == 0 ? B/2 : (B+1)/2
        answer += 1
        
        if (A==B) {
            break
        }
    }
    return answer
}