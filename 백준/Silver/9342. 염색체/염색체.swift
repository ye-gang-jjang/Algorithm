import Foundation

if let testCaseCount = readLine(), let t = Int(testCaseCount) {
    for _ in 0..<t {
        if let dna = readLine() {
            let pattern = "^[A-F]?A+F+C+[A-F]?$"
            let regex = try! NSRegularExpression(pattern: pattern)
            let range = NSRange(location: 0, length: dna.utf16.count)
            let result = regex.firstMatch(in: dna, options: [], range: range) != nil ? "Infected!" : "Good"
            print(result)
        }
    }
}