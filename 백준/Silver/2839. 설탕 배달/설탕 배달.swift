var sugar = Int(readLine()!)!
var bag = 0

while (sugar % 5 != 0 && sugar >= 0) {
    sugar -= 3
    bag += 1
}
print(sugar < 0 ? -1 : bag + sugar/5)