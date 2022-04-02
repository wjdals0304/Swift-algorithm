import UIKit

// 문제 :  https://leetcode.com/problems/valid-parentheses/

func isValid(_ s: String) -> Bool {
    var stack:[Character] = []
    
    if s.count == 1 {
        return false
    }
    
    var table: [Character:Character] = [
        ")" : "(" ,
        "}" : "{" ,
        "]" : "["
    ]
    
    for char in s {

        if !table.keys.contains(char) {

            stack.append(char)
        } else if stack.isEmpty || table[char] != stack.popLast() {
            return false
        }
    }
    
    return stack.count == 0
}



print(isValid("{()}"))

