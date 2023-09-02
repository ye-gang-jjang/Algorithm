let S = readLine()!
var alphabet = Array(repeating: 0, count: 26)

for char in S {
    alphabet[Int(char.asciiValue!)-97] += 1
}
print(alphabet.map{String($0)}.joined(separator: " "))