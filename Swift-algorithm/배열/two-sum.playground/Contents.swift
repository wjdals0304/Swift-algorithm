import UIKit

// 문제 : https://leetcode.com/problems/two-sum/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var sum = 0
    var result:[Int] = []
    
    for (index,value) in nums.enumerated() {
        for i in index+1..<nums.count  {
            
            if target == value + nums[i] {
                result = [index] + [i]
            }
            
        }
    }
    
    return result
}

twoSum([2,7,11,15], 9)
