import Foundation

func solution(_ before:String, _ after:String) -> Int {
    
    var beforeSort = before.sorted()
    var afterSort = after.sorted()

    return beforeSort == afterSort ? 1 : 0
}