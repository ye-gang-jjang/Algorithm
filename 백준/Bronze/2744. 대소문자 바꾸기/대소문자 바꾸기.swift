let input = readLine()!

for i in input {
    if String(i) >= "a" && String(i) <= "z" {
        print(String(i).uppercased(),terminator: "")
    } else {
        print(String(i).lowercased(),terminator: "")
    }
}