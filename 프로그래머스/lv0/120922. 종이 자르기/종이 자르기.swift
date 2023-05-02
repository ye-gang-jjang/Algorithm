import Foundation

func solution(_ M:Int, _ N:Int) -> Int {
    if (M == 1) && (N == 1) {
        return 0
    } else {
        return (M*N) - 1
    }
}