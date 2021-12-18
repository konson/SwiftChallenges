//: [Previous](@previous)
//: # Challenge 6
//: ## Remove duplicate letters from a string
//: ### Difficulty: Easy
/*: Write a function that accepts a string as its input, and returns the same string just with
 duplicate letters removed.
 
 
 
 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather
 than “easy”.
 
 
 - - -
 ### Sample input and output
 - The string “wombat” should print “wombat”.
 - The string “hello” should print “helo”.
 - The string “Mississippi” should print “Misp”.
*/
import Foundation

extension String {
    
    func removeDuplicates() -> String {
        var set = Set(self)
        
        return self.filter {
            if set.contains($0) {
                set.remove($0)
                return true
            }
            return false
        }
    }
}

print("wombat".removeDuplicates())
print("hello".removeDuplicates())
print("Mississippi".removeDuplicates())
print("".removeDuplicates())

//• The string “wombat” should print “wombat”.
assert("wombat".removeDuplicates() == "wombat", "1 Challenge 6 failed")

//• The string “hello” should print “helo”.
assert("hello".removeDuplicates() == "helo", "2 Challenge 6 failed")

//• The string “Mississippi” should print “Misp”.
assert("Mississippi".removeDuplicates() == "Misp", "3 Challenge 6 failed")

//: [Next](@next)
