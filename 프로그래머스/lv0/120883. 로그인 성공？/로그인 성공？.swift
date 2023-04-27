import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    var pw = 0

    for i in db {
        if id_pw[0] == i[0] {
            if id_pw[1] == i[1] {
                return "login"
                break
            } else {
                pw += 1
            }
        }
    }

    return pw > 0 ? "wrong pw" : "fail"
}