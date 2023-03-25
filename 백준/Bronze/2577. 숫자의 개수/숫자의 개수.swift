var multiple = 1

var arr = [Int](repeating: 0, count: 10)

(0..<3).forEach { _ in
    multiple *= Int(readLine()!)!
}

while multiple > 0 {
    let digit = multiple % 10
    arr[digit] += 1
    multiple /= 10
}

arr.forEach{ print($0) }