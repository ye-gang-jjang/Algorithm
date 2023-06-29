let NM=readLine()!.split(separator: " ").map{Int($0)!}
var arr=[0]+readLine()!.split(separator: " ").map {Int($0)!}
for i in 1...NM[0]{arr[i]+=arr[i-1]}
for _ in 0..<NM[1]{let ij=readLine()!.split(separator: " ").map{Int($0)!};print(arr[ij[1]]-arr[ij[0]-1])}