//: [Previous](@previous)
//: # Challenge 17
//: ## Generate a random number in a range
//: ### Difficulty: Easy
/*: Write a function that accepts positive minimum and maximum integers, and returns a random
 number between those two bounds, inclusive.
 Sample input and output
 - - -
### Sample input and output
 - Given minimum 1 and maximum 5, the return values 1, 2, 3, 4, 5 are valid.
 - Given minimum 8 and maximum 10, the return values 8, 9, 10 are valid.
 - Given minimum 12 and maximum 12, the return value 12 is valid.
 - Given minimum 12 and maximum 18, the return value 7 is invalid.
*/

import Foundation


func randoNumber(min: Int, max: Int) -> Int {
    
    return Int.random(in: min...max)
}


assert((1...5).contains(randoNumber(min: 1, max: 5)), "1 Challenge 17 failed")
assert((8...10).contains(randoNumber(min: 8, max: 10)), "2 Challenge 17 failed")
assert((12...12).contains(randoNumber(min: 12, max: 12)), "3 Challenge 17 failed")
assert(randoNumber(min: 12, max: 18) != 7, "4 Challenge 17 failed")

arc4random_uniform() % 3

arc4random()
//: [Next](@next)
