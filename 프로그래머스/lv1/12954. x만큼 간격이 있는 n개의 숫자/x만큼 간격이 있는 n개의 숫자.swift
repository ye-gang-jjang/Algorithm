func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    var numList = [Int64]()
    
    for i in 1...n {
        numList.append(Int64(x * i))
    }
    
    return numList
}