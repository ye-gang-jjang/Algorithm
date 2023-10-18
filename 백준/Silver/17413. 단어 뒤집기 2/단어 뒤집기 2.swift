import Foundation

let S = readLine()!

var result = ""
var temp = ""
var flag = false

for char in S {
    if char == "<" {
        if !temp.isEmpty {
            result.append(String(temp.reversed()))
            temp = ""
        }
        flag = true
        
    } else if char == ">" {
        flag = false
        result.append(char)
        continue
    }
    
    if flag == true {
        result.append(char)
    } else if flag == false {
        if char == " " {
            if !temp.isEmpty {
                result.append(String(temp.reversed()))
                temp = ""
            }
            result += " "
            continue
        } else {
            temp.append(char)
        }
    }
}

if !temp.isEmpty {
    result.append(String(temp.reversed()))
}

print(result)