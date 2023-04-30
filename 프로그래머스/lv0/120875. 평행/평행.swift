import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let x1 = dots[0][0]
    let y1 = dots[0][1]
    let x2 = dots[1][0]
    let y2 = dots[1][1]
    let x3 = dots[2][0]
    let y3 = dots[2][1]
    let x4 = dots[3][0]
    let y4 = dots[3][1]
    var result = 0

    func gradient(_ n1: Int, _ n2: Int, _ n3: Int, _ n4: Int) -> Int {
        return abs((n1 - n2) * (n3 - n4))
    }
    
    if gradient(x1,x2,y3,y4) == gradient(y1,y2,x3,x4) {
        return 1
    }

    if gradient(x1,x3,y2,y4) == gradient(y1,y3,x2,x4) {
        return 1
    }

    if gradient(x1,x4,y2,y3) == gradient(y1,y4,x2,x3) {
        return 1
    }
    
    return 0
}