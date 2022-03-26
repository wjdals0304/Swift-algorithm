import UIKit

// 문제: https://leetcode.com/problems/longest-palindromic-substring/

class Solution {

    func expand(_ left: Int, _ right: Int) -> String {
        var L = left, R = right

        if R > str.count {
            return ""
        }
  
        while L >= 0 && R < str.count && str[L] == str[R] {
            L -= 1
            R += 1
        }

        return str[L+1..<R].joined()
    }

    var str = [String]()

    func longestPalindrome(_ s: String) -> String {

        if s.isEmpty || s.count < 1 { return "" }

        if s == String(s.reversed()) { return s }

        str = s.map{String($0)}

        var result = ""
        
        for i in (0..<str.count) {

            var len1 = expand(i, i+1)
            var len2 = expand(i, i+2)
            var tempArray = [ result, len1 , len2]

            result = tempArray.max { a, b in a.count < b.count } ?? ""
            
        }
        
        return result
    }
}

var ss = Solution()

print(ss.longestPalindrome("civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"))



