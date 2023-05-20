import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var w = 0
    var h = 0

    for size in sizes {
        let width = max(size[0], size[1])
        let height = min(size[0], size[1])

        w = max(width, w)
        h = max(height, h)
    }
    
    return w*h
}