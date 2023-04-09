let T = Int(readLine()!)!

for _ in 0..<T {
    var score = 1
    var result = 0
    
    let input = readLine()!
    
    for i in input.indices {
        if input[i] == "O" {
            result += score
            score += 1
        } else {
            score = 1
        }
    }
    print(result)
}