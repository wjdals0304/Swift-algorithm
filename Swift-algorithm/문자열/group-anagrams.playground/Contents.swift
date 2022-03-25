import UIKit

// 문제: https://leetcode.com/problems/group-anagrams/

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    var tempDic = [ String : [String] ] ()
    
    for (i,v) in strs.enumerated() {
        
        let key = String(v.sorted())
        
        if tempDic.keys.contains(key) {
            tempDic[key] = tempDic[key]! + [v]
        } else {
            tempDic[key] = [v]
        }
        
    }
    
    return Array(tempDic.values)
}


print( groupAnagrams(["eat","tea","tan","ate","nat","bat"]) )




