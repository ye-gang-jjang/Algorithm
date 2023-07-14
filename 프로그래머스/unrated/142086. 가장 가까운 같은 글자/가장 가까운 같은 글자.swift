import Foundation

func solution(_ s:String) -> [Int] {
    var dict = [String: Int]()
    var str = s.map{ String($0) }
    var result = [Int]()
    var idx = 0
    
    for char in str {
        if dict[char] == nil {
            result.append(-1)
        } else {
            let index = idx - dict[char]!
            result.append(index)
        }

        dict[char] = idx
        idx += 1
    }
    
    return result
}