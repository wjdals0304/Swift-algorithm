import UIKit


// 문제 : https://leetcode.com/problems/daily-temperatures/

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var answer  = [Int](repeating: 0, count: temperatures.count)
    var stack:[Int] = []
    
    for i  in 0..<temperatures.count {

        while !stack.isEmpty && temperatures[i] > temperatures[ stack.last! ] {
            var last = stack.removeLast()
            answer[last] = i - last
        }
        stack.append(i)
    }
    
    return answer
}


print(dailyTemperatures([73,74,75,71,69,72,76,73]))
