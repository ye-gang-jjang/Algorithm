let n = Int(readLine()!)!

func recur(_ n : Int, _ cnt: Int) -> Int {
    if n < 2 {
        return cnt
    }
    return min(recur(n/2, cnt+1 + (n%2)), recur(n/3, cnt+1+(n%3)))
    
}

print(recur(n, 0))