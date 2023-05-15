while let n = Int(readLine()!), n != -1 {
    var arr = [Int]()
    
    for i in 1...n/2 {
        if n % i == 0 {
            arr.append(i)
        }
    }
    
    if arr.reduce(0, +) == n {
        print("\(n) = \(arr.map { String($0) }.joined(separator: " + "))")
    } else {
        print("\(n) is NOT perfect.")
    }
}