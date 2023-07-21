var arr = Set(2...246912)

var number = 2
var count = 2

while true {
    let num = number * count
    arr.remove(num)

    count += 1

    if num > 246912 {
        number += 1
        count = 2
    }
    
    if number > 123456 {
        break
    }
}


while true {
    let n = Int(readLine()!)!
    if n == 0 {
        break
    } else if n == 1 {
        print(1)
        continue
    } else {
        var result = [Int]()
        
        for i in n+1...n*2 {
            if arr.contains(i) {
                result.append(i)
            }
        }
        
        print(result.count)
    }
}