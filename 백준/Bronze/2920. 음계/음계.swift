let input = readLine()!.split(separator: " ").map{ Int($0)! }
let inputSort = input.sorted()
let inputRSort = input.sorted(by: >)


if input == inputSort {
    print("ascending")
} else if input == inputRSort {
    print("descending")
} else {
    print("mixed")
}