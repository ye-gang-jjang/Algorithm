import Foundation

func solution(_ rsp:String) -> String {
    var result = ""
    
    for i in rsp.indices {
    result += (rsp[i] == "2") ? "0" : (rsp[i] == "0") ? "5" : "2"
    }
    
    return result
}