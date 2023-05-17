func solution(_ s:String) -> String {
    let result = s.sorted(by: >)
    return String(result)
}