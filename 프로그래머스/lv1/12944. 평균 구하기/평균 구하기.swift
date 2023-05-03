func solution(_ arr:[Int]) -> Double {
    var sum = arr.reduce(0, +)
    let result = (Double(sum) / Double(arr.count))
    return result
}