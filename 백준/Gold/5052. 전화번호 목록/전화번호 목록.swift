let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var phoneNumberList = [String]()
    
    for _ in 0..<n {
        let phoneNumber = readLine()!
        phoneNumberList.append(phoneNumber)
    }
    phoneNumberList.sort()
    
    print(check(phoneNumberList) ? "YES" : "NO")
    
    func check(_: [String]) -> Bool {
        for i in 0..<phoneNumberList.count - 1 {
            if phoneNumberList[i+1].hasPrefix(phoneNumberList[i]) {
                return false
            }
        }
        return true
    }
}