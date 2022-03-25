import UIKit

// 문제 : https://leetcode.com/problems/reverse-string/submissions/

func reverseString(_ s: inout [Character]) {
    
    s = Array(s.reversed())
    
}


var ss:[Character] = ["h","e","l","l","o"]

reverseString(&ss)
