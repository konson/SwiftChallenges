//: [Previous](@previous)
//: # Challenge 15
//: ## Reverse the words in a string
//: ### Difficulty: Taxing
/*: Write a function that returns a string with each of its words reversed but in the original order,
 without using a loop.
 - - -
### Sample input and output
 - The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.
 - The string “The quick brown fox” should return “ehT kciuq nworb xof”.
*/

import Foundation

func reverseSentence(input: String) -> String {
    
    // break up into array of words
    let inputArray = input.components(separatedBy: " ")
    
    let reversedArray = inputArray.map { String($0.reversed()) }
    
    return reversedArray.joined(separator: " ")
}

assert(reverseSentence(input: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC", "1 Challenge 15 failed")
assert(reverseSentence(input: "The quick brown fox") == "ehT kciuq nworb xof", "2 Challenge 15 failed")


print(reverseSentence(input: "Swift Coding Challenges"))
print(reverseSentence(input: "The quick brown fox"))

//: [Next](@next)
