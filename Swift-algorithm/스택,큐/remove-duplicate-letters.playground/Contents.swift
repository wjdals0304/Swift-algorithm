import UIKit

var dic :[Character: Int] = ["b": 0]

var b = "b"

print(dic["\(b)"])

func removeDuplicateLetters(_ s: String) -> String {
    var dict: [Character: Int] = [:]
    print(dict)
    
    
    s.map { chr in
        if dict.keys.contains(chr) {
            print(dict)
            
//            dict["\(chr)"] += 1
        } else {
            print(chr)
            dict["\(chr)"] = 1
            //            dict["\(chr)"] = 0
        }
        
    }
    
    print(dict)
    
    return ""
}

print(removeDuplicateLetters("cbacdcbc"))
