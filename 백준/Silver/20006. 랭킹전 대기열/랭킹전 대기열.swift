import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let p = input[0] // 플레이어 수
let m = input[1] // 방 정원

var people = [(Int, String)]()
for _ in 0..<p {
    let input = readLine()!.split(separator: " ")
    let lv = Int(input[0])!
    let id = String(input[1])
    people.append((lv, id))
}

var rooms = [(Int, [(Int, String)])]()

for (lv, id) in people {
    var flag = false
    for i in 0..<rooms.count {
        if rooms[i].1.count == m {
            continue
        }
        
        if rooms[i].0 - 10 <= lv && lv <= rooms[i].0 + 10 {
            flag = true
            rooms[i].1.append((lv, id))
            break
        }
    }
    
    if !flag {
        rooms.append((lv, [(lv, id)]))
    }
}

for i in 0..<rooms.count {
    if rooms[i].1.count == m {
        print("Started!")
        let tmpIds = rooms[i].1.sorted { $0.1 < $1.1 }
        for j in 0..<m {
            print("\(tmpIds[j].0) \(tmpIds[j].1)")
        }
    } else {
        print("Waiting!")
        let tmpIds = rooms[i].1.sorted { $0.1 < $1.1 }
        for j in 0..<tmpIds.count {
            print("\(tmpIds[j].0) \(tmpIds[j].1)")
        }
    }
}
