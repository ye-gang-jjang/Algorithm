import Foundation

func kanto(n: Double) -> String {
    if n == 0 {
        return "-"
    }
    
    let line = kanto(n: n-1)
    return line + String(repeating: " ", count: Int(pow(3, n-1))) + line
}

while let input = readLine() {
    let num = Double(input)!
    let result = kanto(n: num)
    print(result)
}