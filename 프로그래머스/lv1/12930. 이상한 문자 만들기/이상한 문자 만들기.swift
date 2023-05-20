func solution(_ s:String) -> String {
    var result = ""
    var cnt = 0

    for i in s {
        if cnt % 2 == 0 {
            result.append(String(i.uppercased()))
        } else {
            result.append(String(i.lowercased()))
        }
        cnt += 1

        if i == " " {
            cnt = 0
        }
    }
    return result
}