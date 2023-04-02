import Foundation

let T = Int(readLine()!)!

for _ in 1...T {
    let change = Int(readLine()!)!

    let quarter = change / 25
    let dime = (change % 25) / 10
    let nickel = ((change % 25) % 10) / 5
    let penny = (((change % 25) % 10) % 5) / 1

    print(quarter, dime, nickel, penny)
}