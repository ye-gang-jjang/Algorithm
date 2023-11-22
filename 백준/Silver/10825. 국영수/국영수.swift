import Foundation

struct Info {
    let name: String
    let korean: Int
    let english: Int
    let math: Int
}

let N = Int(readLine()!)!
var students = [Info]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    students.append(Info(name: String(input[0]), korean: Int(input[1])!, english: Int(input[2])!, math: Int(input[3])!))
}

students = students.sorted(){ $0.korean == $1.korean ? // 국어 점수가 같다면
    ($0.english == $1.english ? // 영어 점수가 같다면
        ($0.math == $1.math ? // 수학 점수가 같다면
        $0.name < $1.name: // 이름을 오름차순으로
        $0.math > $1.math) // 영어 점수가 같고, 수학 점수가 다르다면 수학 점수를 오름차순으로
            : $0.english < $1.english) // 국어 점수가 같고, 영어점수가 다르다면 내림차순으로
    : $0.korean > $1.korean }

//print(students.map{ String($0.name) }.split(separator: "\n"))
for s in students {
    print(s.name)
}