func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    
    if divisor == 1 {
        result = arr.sorted()
        return result
    }
    
    for n in 0..<arr.count {
        if arr[n] % divisor == 0 {
            result.append(arr[n])
        }
    }
    
    if result.isEmpty {
        result.append(-1)
    }
    
    return result.sorted()
}