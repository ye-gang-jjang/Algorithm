import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let skipSet = Set(skip)
    let aAscii = Int(Character("a").asciiValue!)
    var result = ""
    result.reserveCapacity(s.count)
    
    for ch in s {
        var cur = Int(ch.asciiValue!)
        var step = 0
        
        while step < index {
            cur += 1
            
            if cur > Int(Character("z").asciiValue!) {
                cur = aAscii
            }
            
            let nextChar = Character(UnicodeScalar(cur)!)
            if !skipSet.contains(nextChar) {
                step += 1
            }
        }
        
        result.append(Character(UnicodeScalar(cur)!))
    }
    
    return result
}
