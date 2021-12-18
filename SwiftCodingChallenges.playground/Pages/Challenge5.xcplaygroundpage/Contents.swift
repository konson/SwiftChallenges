//: [Previous](@previous)
//: # Challenge 5
//: ## Count the characters
//: ### Difficulty: Easy
/*:  Write a function that accepts a string, and returns how many times a specific character appears,
 taking case into account.

 
 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
 
 
 - - -
 Sample input and output
 - The letter “a” appears twice in “The rain in Spain”.
 - The letter “i” appears four times in “Mississippi”.
 - The letter “i” appears three times in “Hacking with Swift”.
*/
import Foundation

extension String {
    func howManyTimesTheCharAppears(_ char: Character) -> Int {
        guard
            Array(self).contains(char)
        else {
            return 0
        }

        return Array(self).filter { $0 == char }.count
    }
}
print("The rain in Spain".howManyTimesTheCharAppears("a"))
print("The rain in Spain".howManyTimesTheCharAppears("z"))
print("Mississippi".howManyTimesTheCharAppears("i"))
print("Hacking with Swift".howManyTimesTheCharAppears("i"))
print("Hacking with Swift".howManyTimesTheCharAppears("I"))


//• The letter “a” appears twice in “The rain in Spain”.
assert("The rain in Spain".howManyTimesTheCharAppears("a") == 2, "1 Challenge 5 failed")

// what if it doesn't appear at all?
assert("The rain in Spain".howManyTimesTheCharAppears("z") == 0, "2 Challenge 5 failed")

//• The letter “i” appears four times in “Mississippi”.
assert("Mississippi".howManyTimesTheCharAppears("i") == 4, "3 Challenge 5 failed")

//• The letter “i” appears three times in “Hacking with Swift”.
assert("Hacking with Swift".howManyTimesTheCharAppears("i") == 3, "4 Challenge 5 failed")

// The letter “I” appears zero times in “Hacking with Swift”.
assert("Hacking with Swift".howManyTimesTheCharAppears("I") == 0, "5 Challenge 5 failed")

//: [Next](@next)
