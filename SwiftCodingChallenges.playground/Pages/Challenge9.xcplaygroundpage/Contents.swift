//: [Previous](@previous)
//: # Challenge 9
//: ## Find pangrams
//: ### Difficulty: Tricky
/*: Write a function that returns true if it is given a string that is an English pangram, ignoring
 letter case.
 
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 - - -
 ### Sample input and output
 - The string “The quick brown fox jumps over the lazy dog” should return true.
 - The string “The quick brown fox jumped over the lazy dog” should return false, because
 it’s missing the S.
*/
import Foundation

extension String {

    var isPangram: Bool {
        let letterSet = Set("abcdefghijklmnopqrstuvwxyz")
        let stringSet = Set(self.lowercased())
        
        return letterSet.isSubset(of: stringSet)
    }
    
    var isPangramThePaulHudsonWay: Bool {
        let set = Set(self.lowercased())
        let letters = set.filter { $0 >= "a" && $0 <= "z" }
        return letters.count == 26
    }
    
}

let hasAllLetters = "The quick brown fox jumps over the lazy dog."
let missingLetters = "The quick brown fox jumped over the lazy dog."

print(hasAllLetters.isPangram)

assert(hasAllLetters.isPangram == true, "1 Challenge 9 failed")
assert(missingLetters.isPangram == false, "2 Challenge 9 failed")

assert(hasAllLetters.isPangramThePaulHudsonWay == true, "3 Challenge 9 failed")
assert(missingLetters.isPangramThePaulHudsonWay == false, "4 Challenge 9 failed")

/*: ## Big Takeaway
 Remember to use Sets to see if a String contains any letters of another set of characters.


 `isSubset` is of particular use
 
 
 Swift’s characters conform to `Comparable`, so you can compare them against “a” and “z” directly to ensure they
 are alphabetical.
 */
//: [Next](@next)
