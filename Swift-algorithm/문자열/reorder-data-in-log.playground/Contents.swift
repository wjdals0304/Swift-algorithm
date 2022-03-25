import UIKit

// 문제 : https://leetcode.com/problems/reorder-data-in-log-files/submissions/


func reorderLogFiles(_ logs: [String]) -> [String] {
    
    var orderedDigits = [String]()
    var orderedLetters = [String]()
    
    var letters = [(String, String)]()
    
    for log in logs {
        let spaceIndex = log.firstIndex(of: " ")!
        let startValueIndex = log.index(after: spaceIndex)
        
        let key = String(log[..<spaceIndex])
        let value = String(log[startValueIndex...])
        
        if value.first!.isLetter {
            letters.append((key, value))
        } else {
            orderedDigits.append(log)
        }
    }
    
    letters.sort(by: {
        if $0.1 == $1.1 {
            return $0.0 < $1.0
        }
        return $0.1 <= $1.1
    })
    
    
    for letter in letters{
        orderedLetters.append(letter.0 + " " + letter.1)
    }
    
    return orderedLetters + orderedDigits
}

print(reorderLogFiles(["zoey i love you","lucas i love you","rong i love you"]))


