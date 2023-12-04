let booksPrice = Int(readLine()!)!
var booksSum = 0

for _ in 0..<9 {
    booksSum += Int(readLine()!)!
}

print(booksPrice - booksSum)