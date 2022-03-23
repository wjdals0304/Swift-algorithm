import UIKit

// 문제: https://leetcode.com/problems/valid-palindrome/

func isPalindrome(_ s: String) -> Bool {
    var s = s
    var beforeArr: [Character] = []
    
    s.lowercased().map({ chr in
        if chr.isLowercase || chr.isNumber {
            beforeArr.append(chr)
        }
    })
    
    var afterArr: [Character] = beforeArr.reversed()
    
    return beforeArr == afterArr
}

isPalindrome("A man, a plan, a canal: Panama")
