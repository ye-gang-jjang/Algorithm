let num = Int(readLine()!)!
var count = 0

for _ in 1...num {
    let input = readLine()!
    var str = ""
    
    for char in input {
        if !str.contains(char) {
            str.append(char)
        } else if str.last != char {
            break
        } else {
            str.append(char)
        }
        
        if input.count == str.count {
            count += 1
        }
    }
}

print(count)