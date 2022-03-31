import UIKit

//문제 : https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

func maxProfit(_ prices:[Int]) -> Int {
    
    var profit = 0
    var min_price = Int.max
    
    for (index,price) in prices.enumerated() {
 
        min_price = min(min_price,price)
        profit = max(profit,price - min_price)
        
        print(min_price , profit)
    }

    return profit
}
print(maxProfit([3,2,6,5,0,3]))

print(maxProfit([2,1,2,1,0,1,2]))


//
//func maxProfit(_ prices: [Int]) -> Int {
//
//    var max = 0 , min = prices[0]
//    var left = 0 , right = prices.count - 1
//    var result = 0
//    var minIndex = 0
//
//
//    while minIndex < right {
//
//        print(left , right)
//
//        if prices[left] < min && left <= right{
//            min = prices[left]
//            print("min \(min)")
//
//            minIndex  = left
//        }
//
//        if prices[right] > max && minIndex < right{
//            max = prices[right]
//            print("max \(max)")
//        }
//
//        left += 1
//        right -= 1
//
//    }
//
//    result = max - min
//    if max - min < 0 {
//        result = 0
//    }
//
//    return result
//}

//print(maxProfit([2,1,7,4]))

print(maxProfit([2,1,2,1,0,1,2]))


print(maxProfit([2,1,2,1,0,0,1]))

//print(maxProfit([3,2,6,5,0,3]))

//
//
//print(maxProfit([1,4,2]))



print(maxProfit([7,6,4,3,1]))



