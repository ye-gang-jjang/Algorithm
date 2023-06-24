func solution(_ s:String, _ n:Int) -> String {
    let upperString = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    let lowerString = Array("abcdefghijklmnopqrstuvwxyz")
    let inputString = Array(s)
    var result = ""
   
    for char in inputString {
        // 주어진 문자열의 i번째 문자가 대문자 배열에 포함되었을 경우
        if upperString.contains(char) {
            // 대문자 배열에서 해당 문자의 위치를 찾고, 그 위치에 n을 더한 값을 저장
            var indexNum = upperString.firstIndex(of: char)! + n
            
            // 저장된 위치가 25보다 클 경우, 26을 빼줌으로써 다시 처음부터 위치를 찾을 수 있도록
            if indexNum > 25 {
                indexNum = indexNum - 26
            }

            // 대문자 배열에서 찾은 위치의 문자를 result 배열에 추가
            result.append(upperString[indexNum])
        }
        
        // 주어진 문자열의 i번째 문자가 소문자 배열에 포함되었을 경우
        else if lowerString.contains(char) {
            var indexNum = lowerString.firstIndex(of: char)! + n
            
            if indexNum > 25 {
                indexNum = indexNum - 26
            }
            
            result.append(lowerString[indexNum])
        }
        
        // 주어진 문자열의 i번째 문자가 공백일 경우
        else {
            result.append(char)
        }
    }
    return result
}