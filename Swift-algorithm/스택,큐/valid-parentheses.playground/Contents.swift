import UIKit

// 문제 :  https://leetcode.com/problems/valid-parentheses/

func isValid(_ s: String) -> Bool {
    var stack:[Character] = []
    
    var table: [Character:Character] = [
        ")" : "(" ,
        "}" : "{" ,
        "]" : "["
    ]
    
    for char in s {
        if !table.keys.contains(char) {
            stack.append(char)
        } else if !stack.isEmpty {
            print(stack)
            if table[char] != stack.removeLast() {
            return false
            }
        }
    }
    print(stack)
    
    return stack.count == 0
}


print(isValid("[({}))"))

