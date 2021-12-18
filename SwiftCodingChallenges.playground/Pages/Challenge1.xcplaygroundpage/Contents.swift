//: [Previous](@previous)
//: # Challenge 1
//: ## Are the letters unique?
//: ### Difficulty: Easy
/*: Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
 - - -
 Sample input and output
 - The string “No duplicates” should return true.
 - The string “abcdefghijklmnopqrstuvwxyz” should return true.
 - The string “AaBbCc” should return true because the challenge is case-sensitive.
 - The string “Hello, world” should return false because of the double Ls and double Os.
 */

import Foundation

func challenge1(input: String) -> Bool {
    
    let noSpaces = input.replacingOccurrences(of: " ", with: "") // this needed so that multiple spaces are ignored
    let unique = Set(noSpaces)
//    print("\n\(input) -> \(unique)")

    return unique.count == noSpaces.count ? true : false
}

assert(challenge1(input: "No duplicates") == true, "1 Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "2 Challenge 1 failed")
assert(challenge1(input: "abcde fghijklm nopqrst uvwxyz") == true, "3 Challenge 1 failed") // test multiple spaces
assert(challenge1(input: "AaBbCc") == true, "4 Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "5 Challenge 1 failed")
assert(challenge1(input: "     ") == true, "6 Challenge 1 failed")

//: [Next](@next)
