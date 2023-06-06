let input = Int(readLine()!)!

for _ in 0..<input {
    let HWN = readLine()!.split(separator: " ").map{ Int($0)! }
    let H = HWN[0]
    let N = HWN[2]
    
    let floor = N%H == 0 ? H : N%H
    let room = N%H == 0 ? N/H : N/H + 1
    print( room < 10 ? "\(floor)0\(room)" : "\(floor)\(room)")
}