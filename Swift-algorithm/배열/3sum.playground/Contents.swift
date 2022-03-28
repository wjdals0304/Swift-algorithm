import UIKit

// 문제: https://leetcode.com/problems/3sum/

func threeSum(_ nums: [Int]) -> [[Int]] {
    
    var nums = nums
    
    if nums.allSatisfy({ $0 == 0 }) && nums.count < 3 {
        return []
    }
    
    nums.sort()
    
    var result:[[Int]] = []
    
    for (index,num) in nums.enumerated() {
                
        for i in index+1..<nums.count {
            
            var elementTmp:[Int] = []
            var offsetTmp: Set<Int>  = []
            
            if let findIndex = nums.firstIndex(where: { $0 == ( -(num + nums[i]) )  }) {
            
                if i != findIndex  {
            
                    elementTmp = [ nums[index] , nums[i], nums[findIndex] ]
                    
                    offsetTmp = [ index,i, findIndex ]
                                        
                    if offsetTmp.count == 3 && result.enumerated().filter { $0.element.sorted() == elementTmp.sorted() }.isEmpty  {
                        
                        result.append(elementTmp)
                    }
                    
                 }
                    
                }
            }
            
        }
    
    return result
}

//
print(threeSum([-6,14,-11,7,-5,-8,12,-13,-3,-14,7,0,-7,-15,-5,-9,-13,-7,-5,9,8,-13,-6,-8,-12,7,-10,11,8,-14,12,9,-15,-14,1,-5,-7,-10,-10,5,-9,12,12,-1,12,14,-2,-15,-8,0,9,7,2,10,14,-3,2,11,-6,-13,12,13,11,5,14,-11,7,14,-6,12,-4,-7,9,-7,-1,-1,-8,4,-9,-9,-11,-15,5,6,10,4,11,-10,-8,12,-8,-10,10,11,2,9,-15,-14,0,-13,14,11,-5,0,-11,1,6,-12]))


print(threeSum([1,1,-2]))


print(threeSum([0,0,0]))
 

