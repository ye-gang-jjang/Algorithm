while true {
    let input = readLine()!
    let inputSort = String(input.reversed())
    
    if input == "0" { break }
    
    if input == inputSort { print("yes") }
    else { print("no") }
}