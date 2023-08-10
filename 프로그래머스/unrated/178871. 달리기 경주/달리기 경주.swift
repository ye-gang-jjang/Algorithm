import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var rank = [String: Int]()
    var players = players

    // rank 딕셔너리 key player 이름, value 등수 를 넣는 작업, 0부터 1씩 증가
    for i in 0..<players.count {
        rank[players[i], default: 0] = i
    }

    for call in callings {
        // idx 현재 불려진 선수의 등수, rank 딕셔너리에서 call(key)이 있는 value값 가져옴
        let idx = rank[call]!
        // 앞 선수, player 배열에서 불려진 선수의 바로 앞 선수
        let player = players[idx-1]
        
        rank[call]! -= 1
        rank[players[idx-1]]! += 1
        
        players.swapAt(idx, idx-1)
    }
    
    return players
}