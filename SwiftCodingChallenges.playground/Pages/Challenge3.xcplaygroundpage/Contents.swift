//: [Previous](@previous)
//: # Challenge 3
//: ## Do two strings contain the same characters?
//: ### Difficulty: Easy
/*: Write a function that accepts two String parameters, and returns true if they contain the same
 characters in any order taking into account letter case.
 - - -
### Sample input and output
 - The strings “abca” and “abca” should return true.
 - The strings “abc” and “cba” should return true.
 - The strings “ a1 b2 ” and “ b1 a2 ” should return true.
 - The strings “abc” and “abca” should return false.
 - The strings "abc" and "Abc" should return false.
 - The strings “abc” and “cbAa” should return false.
 - The strings “abcc” and “abca” should return false.
*/

import Foundation

// The sorting algorithm is not guaranteed to be stable.
// A stable sort preserves the relative order of elements that compare equal.
// Complexity: O(n log n), where n is the length of the sequence.

func challenge3(lhs: String, rhs: String) -> Bool { 
    return Array(lhs).sorted() == Array(rhs).sorted()
}

//• The strings “abca” and “abca” should return true.
assert(challenge3(lhs: "abca", rhs: "abca") == true, "1 Challence 3 failed")

//• The strings “abc” and “cba” should return true.
assert(challenge3(lhs: "abc", rhs: "cba") == true, "2 Challence 3 failed")

//• The strings “ a1 b2 ” and “ b1 a2 ” should return true.
assert(challenge3(lhs: " a1 b2 ", rhs: " b1 a2 ") == true, "3 Challence 3 failed")

//• The strings “abc” and “abca” should return false.
assert(challenge3(lhs: "abc", rhs: "abca") == false, "4 Challence 3 failed")

//• The strings "abc" and "Abc" should return false.
assert(challenge3(lhs: "abc", rhs: "Abc") == false, "5 Challence 3 failed")

//• The strings “abc” and “cbAa” should return false.
assert(challenge3(lhs: "abc", rhs: "cbAa") == false, "6 Challence 3 failed")

//• The strings “abcc” and “abca” should return false.
assert(challenge3(lhs: "abcc", rhs: "abca") == false, "7 Challence 3 failed")

// extras
assert(challenge3(lhs: "abca", rhs: "abcaA") == false, "8 Challence 3 failed")
assert(challenge3(lhs: "abca", rhs: "ab ca") == false, "9 Challence 3 failed")


//: [Next](@next)
