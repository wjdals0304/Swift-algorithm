import UIKit

// 문제 : https://leetcode.com/problems/most-common-word/

func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
    
    var dic: [String: Int] = [:]

    var stringArr = paragraph.lowercased()
        .components(separatedBy: [",",".","?","!",";"," ","'"])
    
    for str in stringArr {
        
        let str = String(str)

        if banned.contains(str) || str == ""{
            continue
        }
        
        if dic.keys.contains(str) {
            dic[str] = dic[str]! + 1
        } else {
            dic[str] = 1
        }
    }
    
    guard let result = dic.max { a,b in a.value < b.value }?.key else { return "" }
    
    return result
}

print(mostCommonWord("a, a, a, a, b,b,b,c, c", ["a"]))
    



