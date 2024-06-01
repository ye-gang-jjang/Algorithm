let testCase: Int = Int(readLine()!)!

for _ in 0..<testCase {
    let n: Int = Int(readLine()!)!
    var closet: Dictionary<String, Int> = [:]
    
    for _ in 0..<n {
        // 카테고리_제품명
        let item = readLine()!.split(separator: " ").map { String($0) }
        
        if !closet.keys.contains(item[1]) {
            closet.updateValue(2, forKey: item[1])
        } else {
            closet[item[1]]! += 1
        }
    }
    
    let result = closet.values.reduce(1, *) - 1
    
    print(result)
}