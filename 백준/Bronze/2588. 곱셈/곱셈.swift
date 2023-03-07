import Foundation

let inputNum1 = Int(readLine()!)!
let inputNum2 = Int(readLine()!)!

print("""
\(inputNum1*(inputNum2%10))
\(inputNum1*((inputNum2%100)/10))
\(inputNum1*(inputNum2/100))
\(inputNum1*inputNum2)
""")