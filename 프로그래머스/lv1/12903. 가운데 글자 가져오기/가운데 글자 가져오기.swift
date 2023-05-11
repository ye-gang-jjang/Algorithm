func solution(_ s:String) -> String {
    let result = Array(s)[(s.count-1)/2 ... s.count/2]
    return String(result)
}