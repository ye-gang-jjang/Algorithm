let n = Int(readLine()!)!
var enterPerson = Set<String>()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let name = input[0]
    let state = input[1]

    if state == "enter" && !enterPerson.contains(name) {
        enterPerson.insert(name)
    } else {
        enterPerson.remove(name)
    }
}
let person = enterPerson.sorted(by: >)
person.forEach{ print($0) }