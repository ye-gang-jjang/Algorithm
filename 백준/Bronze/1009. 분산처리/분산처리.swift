let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = input[0]
    let b = input[1]
    
    let arr2 = [6,2,4,8]
    let arr3 = [1,3,9,7]
    let arr4 = [6,4]
    let arr7 = [1,7,9,3]
    let arr8 = [6,8,4,2]
    let arr9 = [1,9]
    
    let comA = a % 10
    var num = 0
    
    switch comA {
    case 0:
        print(10)
    case 1:
        print(1)
    case 2:
        num = b % 4
        print(arr2[num])
    case 3:
        num = b % 4
        print(arr3[num])
    case 4:
        num = b % 2
        print(arr4[num])
    case 5:
        print(5)
    case 6:
        print(6)
    case 7:
        num = b % 4
        print(arr7[num])
    case 8:
        num = b % 4
        print(arr8[num])
    case 9:
        num = b % 2
        print(arr9[num])
    case 10:
        print(10)
    default:
        continue
    }
}