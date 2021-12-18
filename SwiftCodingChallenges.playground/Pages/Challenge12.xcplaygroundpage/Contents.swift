//: [Previous](@previous)

import Foundation
import Darwin

//: # Challenge 12
//: ## Find longest prefix
//: ### Difficulty: Tricky
/*: Write a function that accepts a string of words with a similar prefix, separated by spaces, and
 returns the longest substring that prefixes all words.
 - - -
### Sample input and output
 - The string “swift switch swill swim” should return “swi”.
 - The string “flip flap flop” should return “fl”.
*/

//find all similar letters with sets


func findLongestPrefix(stringOfWords: String) -> String {
    
    // breaking up into an array
    let arrayOfWords = stringOfWords.components(separatedBy: " ")
    
    // The shortest word will have the answer no matter what the other words are
    // find the shortest word so we only have to loop the fewest times
    let sorted = arrayOfWords.sorted(by: {$0.count < $1.count})
    let shortestWord = sorted.first
    
    // store the prefix somewhere as you build it
    var prefix = ""
    
    // loop over marker word
    for (index, char) in shortestWord!.enumerated() {
        let letter = String(char)
        
        if letterExists(letter, atIndex: index, inAllOfWords: sorted) {
            prefix = prefix + letter
        } else {
            return prefix
        }
    }
    
    return prefix
}


func letterExists(_ letter: String, atIndex comparisonIndex: Int, inAllOfWords words: [String]) -> Bool {
    var returnValue = true
    words.forEach { word in
        let char = String(Array(word)[comparisonIndex])
        if char != letter {
            returnValue = false
        }
    }
    return returnValue
}

print(findLongestPrefix(stringOfWords: "flip flap flop"))
print(findLongestPrefix(stringOfWords: "swift switch swill swim"))
print(findLongestPrefix(stringOfWords: ""))
print(findLongestPrefix(stringOfWords: "abc def ghi"))
print(findLongestPrefix(stringOfWords: "cat cop chi"))
print(findLongestPrefix(stringOfWords: "cat cat cat"))
print(findLongestPrefix(stringOfWords: "append apple apprentice") )

assert(findLongestPrefix(stringOfWords: "swift switch swill swim") == "swi", "1 Challenge 12 failed")
assert(findLongestPrefix(stringOfWords: "flip flap flop") == "fl", "2 Challenge 12 failed")
assert(findLongestPrefix(stringOfWords: "flip flap flop switch") == "", "3 Challenge 12 failed")
assert(findLongestPrefix(stringOfWords: "") == "", "3 Challenge 12 failed")
assert(findLongestPrefix(stringOfWords: "abc def ghi") == "", "4 Challenge 12 failed")
assert(findLongestPrefix(stringOfWords: "cat cop chi") == "c", "5 Challenge 12 failed")
assert(findLongestPrefix(stringOfWords: "cat cat cat") == "cat", "6 Challenge 12 failed")
assert(findLongestPrefix(stringOfWords: "append apple apprentive") == "app", "7 Challenge 12 failed")



//: [Next](@next)
