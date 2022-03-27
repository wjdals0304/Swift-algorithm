import UIKit

// 문제 : https://leetcode.com/problems/trapping-rain-water/

func trap(_ height: [Int]) -> Int {

    if height.isEmpty {
        return 0
    }

    var volume = 0
    var left = 0
    var right = height.count - 1

    var left_max =  height[left]
    var right_max = height[right]


    while left < right {

        left_max = max(height[left] , left_max)
        right_max = max(height[right] , right_max)


        if left_max <= right_max {
            volume += left_max - height[left]
            left += 1
        } else {
            volume += right_max - height[right]
            right -= 1
        }

    }
    return volume

}

trap([0,1,0,2,1,0,1,3,2,1,2,1])



//
//func trap(_ height: [Int]) -> Int {
//
//    var passIndex: [Int] = [ ]
//
//    var sum = 0
//
//    for (index,value) in height.enumerated(){
//
//
//        if passIndex.contains(index) {
//            continue
//        }
//
//        var filterIndexArray = height.enumerated().filter{  $0.element != 0 && $0.offset != index && $0.offset > index  }
//
//        filterIndexArray.sort(by: {$0.element > $1.element } )
//
//        print(filterIndexArray)
//
//        var indexOffset = filterIndexArray.first?.offset ?? -1
//
//        var indexElement = filterIndexArray.first?.element ?? 0
//
//
//        if indexOffset == -1 {
//            continue
//        }
//
//        stride(from: index+1, to: indexOffset, by: 1).map {
//            passIndex.append($0)
//        }
//
//
//        var indexRange = height.index(after: index)..<indexOffset
//
//        height[indexRange].map {
//
//            if value < indexElement {
//                sum = sum + ( value - $0)
//            } else if value > indexElement {
//                sum = sum + ( indexElement - $0 )
//            }
//
//        }
//
//       }
//
//    return sum
//}
//


//trap([0,1,0,2,1,0,1,3,2,1,2,1])
