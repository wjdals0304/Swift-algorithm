import UIKit

// 문제 : https://leetcode.com/problems/daily-temperatures/

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var answer  = [Int](repeating: 0, count: temperatures.count)
    var stack:[Int] = []
    
    for (i , cur) in temperatures.enumerated() {
        
        
        while !stack.isEmpty && cur > temperatures[ stackLast ] {
            
            var last = stack.popLast()!
            print("last")
            print(last)
            answer[last] = i - last
        }
    }
    
}

return []
}



print(dailyTemperatures([73,74,75,71,69,72,76,73]))
