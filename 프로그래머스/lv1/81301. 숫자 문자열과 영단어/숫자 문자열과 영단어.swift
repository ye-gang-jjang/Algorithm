import Foundation

func solution(_ s:String) -> Int {
    let str = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var result = s
    
    for i in 0..<str.count {
        /*
         replacingOccurrences 해당 문자열 중 of에 해당하는 문자가 존재 할 시 with의 문자로 자동 변경
         0 ~ 9 순서대로 String 배열을 만들어 놨고 각 인덱스 = 문자의 숫자 이름이라 0부터 9까지 작은 숫자부터 변하는 것처럼 보임
         */
        result = result.replacingOccurrences(of: str[i], with: String(i))
    }
    
    return Int(result)!
}