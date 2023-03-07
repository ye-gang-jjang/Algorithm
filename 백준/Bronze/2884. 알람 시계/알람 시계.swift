let time = readLine()!.split(separator: " ")

let hour = Int(time[0])!
let min = Int(time[1])!

if min<45 {
    if hour == 0 {
        print("23 \(min+15)")
    } else {
        print("\(hour-1) \(min+15)")
    }
} else {
    if hour == 0 {
        print("\(hour) \(min-45)")
    } else {
        print("\(hour) \(min-45)")
    }
}