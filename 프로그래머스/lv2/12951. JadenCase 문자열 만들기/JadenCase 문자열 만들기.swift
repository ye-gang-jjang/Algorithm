func solution(_ s:String) -> String {
    var result = ""
    var count = 0
    
    for idx in s {
        if idx != " " {
            if count == 0 {
                result += String(idx).uppercased()
            } else {
                result += String(idx).lowercased()
            }
            count += 1
        } else {
            result += " "
            count = 0
        }
    }
    
    return result
}