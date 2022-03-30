import UIKit

func arrayPairSum(_ nums: [Int]) -> Int {
     
    var result = 0
    var nums = nums
    
    nums.sort()
    
    for i in stride(from: 0, to: nums.count, by: 2) {
        result += (min(nums[i],nums[i+1]))
        
    }

    return result
 }


print(arrayPairSum([1,4,3,2]))
