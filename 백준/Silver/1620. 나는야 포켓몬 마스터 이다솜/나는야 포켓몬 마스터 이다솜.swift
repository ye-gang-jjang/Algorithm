import Foundation

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NM[0]
let M = NM[1]

var pokedexDic = [String: Int]()
var pokedexArr = [String]()

for i in 0..<N {
    let name = readLine()!
    pokedexDic[name] = i+1
    pokedexArr.append(name)
}

for _ in 0..<M {
    let query = readLine()!
    
    if query.allSatisfy({ $0.isNumber }) {
        let idx = Int(query)!
        print(pokedexArr[idx-1])
    } else {
        print(pokedexDic[query]!)
    }
}