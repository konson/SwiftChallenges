//: [Previous](@previous)
//: # Challenge 13
//: ## Run-length encoding
//: ### Difficulty: Taxing
/*: Write a function that accepts a string as input, then returns how often each letter is repeated in
 a single run, taking case into account.
 
 
 Tip: This approach is used in a simple lossless compression technique called run-length
 encoding.
 - - -
 */

import Foundation

extension String {
    var singleRunOfRepeatingChars: String {
        var previousChar = ""
        var output = ""
        var counter = 0
        
        let stringArray = Array(self)
        
        for (index, char) in stringArray.enumerated() {
            let currentChar = String(char)
            
            if previousChar.isEmpty {
                previousChar = currentChar
            }
            
            // if on last char, finish it off
            guard !(index == stringArray.count - 1)  else {
                let suffixString = previousChar + String(counter + 1)
                output = output + suffixString
                previousChar = currentChar
                
                return output
            }
            
            if previousChar == currentChar {
                counter += 1
            } else {
                let suffixString = previousChar + String(counter)
                output = output + suffixString
                previousChar = currentChar
                counter = 1
            }
        }

        return output
    }
}


print("aabbcc".singleRunOfRepeatingChars)
print("aaabaaabaaa".singleRunOfRepeatingChars)
print("aaAAaa".singleRunOfRepeatingChars)
print("aa   AAaa".singleRunOfRepeatingChars)

assert("aabbcc".singleRunOfRepeatingChars == "a2b2c2", "1 Challenge 13 failed")

assert("aaabaaabaaa".singleRunOfRepeatingChars == "a3b1a3b1a3", "2 Challenge 13 failed")

assert("aaAAaa".singleRunOfRepeatingChars == "a2A2a2", "3 Challenge 13 failed")
assert("aa   AAaa".singleRunOfRepeatingChars == "a2 3A2a2", "3 Challenge 13 failed")



//: [Next](@next)
