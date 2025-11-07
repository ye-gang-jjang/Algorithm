import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let N = nk[0], K = nk[1]
var A = readLine()!.split(separator: " ").map { Int($0)! }

var temp = Array(repeating: 0, count: N)
var cnt = 0
var answer = -1
var found = false

func merge(_ l: Int, _ m: Int, _ r: Int) {
    if found { return }

    var i = l
    var j = m + 1
    var k = l

    while i <= m && j <= r {
        if A[i] <= A[j] { temp[k] = A[i]; i += 1 }
        else { temp[k] = A[j]; j += 1 }
        k += 1
    }
    while i <= m { temp[k] = A[i]; i += 1; k += 1 }
    while j <= r { temp[k] = A[j]; j += 1; k += 1 }

    for t in l...r {
        A[t] = temp[t]
        cnt += 1
        if cnt == K {
            answer = A[t]
            found = true
            break
        }
    }
}

func mergeSort(_ l: Int, _ r: Int) {
    if l >= r || found { return }
    let m = (l + r) / 2
    mergeSort(l, m)
    mergeSort(m + 1, r)
    merge(l, m, r)
}

mergeSort(0, N - 1)
print(answer)
