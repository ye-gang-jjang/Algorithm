import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    let width = box[0] / n
    let length = box[1] / n
    let height = box[2] / n
    
    return width * length * height
}