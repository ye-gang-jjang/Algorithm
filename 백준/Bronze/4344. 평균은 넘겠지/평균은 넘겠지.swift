import Foundation

let C = Int(readLine()!)!

for _ in 1...C {
    let N = readLine()!.split(separator: " ").map{ Int($0)! }
    
    let student = N[0]
    var gradeSum = 0
    var count = 0.0
    
    
    for i in 1...student {
        gradeSum += N[i]
    }
    
    let avg = Int(gradeSum/student)
    
    
    for i in 1...student {
        if avg < N[i] {
            count += 1
        }
    }
    
    let result = Double(count/Double(student))*100
    

    print(String(format: "%.3f", result)+"%")
    
}