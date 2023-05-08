func solution(_ x:Int) -> Bool {
    let sumX = String(x).map{ Int(String($0))! }.reduce(0, +)
    return (x % sumX == 0) ? true : false
}