var sugar = Int(readLine()!)!
var bag = 0

while(sugar >= 3) {
    if sugar % 5 == 0 {
        sugar -= 5
        bag += 1
    } else {
        sugar -= 3
        bag += 1
    }
}

print(sugar == 0 ? bag : -1)