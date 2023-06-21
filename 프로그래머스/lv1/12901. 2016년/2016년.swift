func solution(_ a:Int, _ b:Int) -> String {
    let week = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    let day = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    return week[(day[0..<a - 1].reduce(0, +) + b + 4) % 7]
}