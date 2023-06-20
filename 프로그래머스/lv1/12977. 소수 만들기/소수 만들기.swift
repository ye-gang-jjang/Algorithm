import Foundation

func isPrime(_ n: Int) -> Bool {
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var sum = [Int]()
    
    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {
                sum.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    return sum.filter{ isPrime($0) }.count
}