import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var width = 1
    var height = 1

    for i in 1...3 {
        if dots[0][0] == dots[i][0] {
            print(dots[0][0])
            print(dots[i][0])

            if dots[i][1] > dots[0][1] {
                width = dots[i][1] - dots[0][1]
            } else {
                width = dots[0][1] - dots[i][1]
            }
        }

        if dots[0][1] == dots[i][1] {
            print(dots[0][1])
            print(dots[i][1])

            if dots[i][0] > dots[0][0] {
                height = dots[i][0] - dots[0][0]
            } else {
                height = dots[0][0] - dots[i][0]
            }
        }
    }
    return width * height
}