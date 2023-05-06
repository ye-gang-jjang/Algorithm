func solution(_ s:String) -> String {
    var str = s.lowercased()
    
    var result = ""
    var count = 0
    
    for idx in str {
        if idx != " " {
            if count == 0 {
                result += String(idx).uppercased()
            } else {
                result += String(idx)
            }
            count += 1
        } 
        else {
            result += " "
            count = 0
        }
    }
    
    return result
}