import Foundation

func solution(_ money:Int) -> [Int] {
    var arr = [Int](repeating: 0, count: 2)
    var coffee = money / 5500
    var changes = money - (coffee*5500)
    
    arr[0] = coffee
    arr[1] = changes
    
    return arr

}