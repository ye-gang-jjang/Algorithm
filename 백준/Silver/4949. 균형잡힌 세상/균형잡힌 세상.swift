while true {
    let input = readLine()!
    
    if input == "." {
        break
    }
    
    var stack = [Character]()
    var check = true
    
    for i in input {
        if i == "[" || i == "(" {
            stack.append(i)
        } else if i == "]" || i == ")" {
            if stack.isEmpty {
                check = false
                break
            }
            
            if i == "]" && stack.removeLast() != "[" {
                check = false
                break
            } else if i == ")" && stack.removeLast() != "(" {
                check = false
                break
            }
        }
    }
    
    if check == false {
        print("no")
    } else {
        print( stack.isEmpty ? "yes" : "no")
    }
}
