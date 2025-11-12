import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var score: [Character: Int] = ["R":0,"T":0,"C":0,"F":0,"J":0,"M":0,"A":0,"N":0]
    let pts = [0,3,2,1,0,1,2,3]  // index = choice

    for (q, ch) in zip(survey, choices) {
        let left = q.first!, right = q.last!
        
        if ch < 4 {
            score[left, default:0] += pts[ch]
        } else if ch > 4 {
            score[right, default:0] += pts[ch]
        }
    }

    func pick(_ a: Character, _ b: Character) -> Character {
        return (score[a, default:0] >= score[b, default:0]) ? a : b
    }

    let result = String([ pick("R","T"), pick("C","F"), pick("J","M"), pick("A","N") ])
    
    return result
}