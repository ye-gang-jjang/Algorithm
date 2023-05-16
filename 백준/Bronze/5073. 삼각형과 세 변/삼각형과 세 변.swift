while true {
    let n = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    if n[0] == 0 { break }
    
    if n[2] >= n[0] + n[1] {
        print("Invalid")
    } else if n[0] == n[1] && n[1] == n[2] {
        print("Equilateral")
    } else if n[0] == n[1] || n[1] == n[2] || n[2] == n[0] {
        print("Isosceles")
    } else {
        print("Scalene")
    }
}