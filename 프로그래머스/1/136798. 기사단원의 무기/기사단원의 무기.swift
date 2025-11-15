import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    func countDivisors(_ n: Int) -> Int {
        var cnt = 0
        var i = 1
        
        while i * i <= n {
            if n % i == 0 {
                cnt += 1
                
                if i * i != n {
                    cnt += 1
                }
            }
            
            i += 1
        }
        return cnt
    }
    
    var sum = 0
    
    for i in 1...number {
        var c = countDivisors(i)   // i의 약수 개수
        if c > limit {
            c = power              // limit 초과면 power로 교체
        }
        sum += c                   // 무기 공격력 합에 더하기
    }
    
    return sum
}