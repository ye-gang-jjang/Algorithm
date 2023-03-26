import Foundation

func solution(_ my_string:String) -> String {
    let strLowe = my_string.lowercased()
    let strUpper = my_string.uppercased()
    
    var result = ""
    
    for i in my_string.indices {
        result += (my_string[i] != strLowe[i]) ? String(strLowe[i]) : String(strUpper[i])

    }
    
//     for i in my_string.indices {
//         if my_string != strLowe[i] {
//             result += String(strLowe[i])
//         } else {
//             result += String(strUpper[i])
//         }
//     }
    
    
    return result
}
