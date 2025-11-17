import Foundation

func canPronounce(_ s: String) -> Bool {
    let syllables = ["aya", "ye", "woo", "ma"]
    var last = ""
    let chars = Array(s)
    var i = 0
    
    while i < chars.count {
        var matched = false
        
        for syl in syllables {
            if syl == last { continue }
            
            let len = syl.count
            if i + len <= chars.count {
                let slice = String(chars[i..<i+len])
                if slice == syl {
                    last = syl
                    i += len
                    matched = true
                    break
                }
            }
        }
        
        if !matched {
            return false
        }
    }
    
    return true
}

func solution(_ babbling:[String]) -> Int {
    var count = 0
    
    for word in babbling {
        if canPronounce(word) {
            count += 1
        }
    }
    return count
}
