import UIKit

// 문제: https://leetcode.com/problems/product-of-array-except-self/
func productExceptSelf(_ nums: [Int]) -> [Int] {
    var out:[Int] = []
    var p = 1
    
    for i in 0..<nums.count {
        out.append(p)
        p = p * nums[i]
    }
    p = 1
    
    for i in stride(from: nums.count - 1 , to: -1, by: -1) {
        out[i] = out[i] * p
        p = p * nums[i]
    }
    
    return out
}

print(productExceptSelf([1,2,3,4]))


//func productExceptSelf(_ nums: [Int]) -> [Int] {
//
//    var nums = nums
////    nums.sort()
//
//    var tempArr = nums
//
//    var result:[Int] = []
//
//    var productE = 0
//
//    for (index,num) in nums.enumerated() {
//
//        var removeE = tempArr.remove(at: index)
//
//        productE = tempArr.reduce(1, *)
//
//        result.append(productE)
//
//        tempArr.insert(contentsOf: [removeE], at: index)
//    }
//
//    return result
//}

print(productExceptSelf([1,0]))
