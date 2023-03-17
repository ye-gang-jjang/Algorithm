import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var arr: [Int] = Array(repeating: 0, count: 2)
    for i in 0...num_list.count-1 {
        if num_list[i]%2 == 0 {
            arr[0] += 1
        } else {
            arr[1] += 1
        }
    }
    return arr
}