//: [Previous](@previous)
//: # Challenge 7
//: ## Condense whitespace
//: ### Difficulty: Easy
/*: Write a function that returns a string with any consecutive spaces replaced with a single space.
 ### Sample input and output
 I’ve marked spaces using “[space]” below for visual purposes:
 - The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
 - The string “[space][space][space][space]a” should return “[space]a”.
 - The string “abc” should return “abc”.
*/
import Foundation

extension String {
    
    func condenseWhitespace() -> String {
        
        return self.reduce("") {
            // Check if you are on the very first string trying to compare to "" to the very first char
            // If you are jsut return the fist char to build onto the return string you are building
            guard let lastString = $0.last else { return String($1) }
                
            // only build on the reduced product if not a consecutive space
            return (lastString == $1 && $1 == " ") ? $0 : $0 + String($1)
        }
    }
}

print("a   b   c".condenseWhitespace())
print("    a".condenseWhitespace())
print("abc".condenseWhitespace())


//• The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
assert("a   b   c".condenseWhitespace() == "a b c", "1 Challenge 7a failed")

//• The string “[space][space][space][space]a” should return “[space]a”.
assert("    a".condenseWhitespace() == " a", "2 Challenge 7a failed")

//• The string “abc” should return “abc”.
assert("abc".condenseWhitespace() == "abc", "2 Challenge 7a failed")


/*
 Regular expression would have been nicer solution. One of these days I'll learn to use them.
 */

extension String {
    func condenseUsingRegEx() -> String {
        return self.replacingOccurrences(of: " +", with: " ",
                                          options: .regularExpression, range: nil)
    }
}


print("a   b   c".condenseUsingRegEx())
print("    a".condenseUsingRegEx())
print("abc".condenseUsingRegEx())


//• The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
assert("a   b   c".condenseUsingRegEx() == "a b c", "1 Challenge 7b failed")

//• The string “[space][space][space][space]a” should return “[space]a”.
assert("    a".condenseUsingRegEx() == " a", "2 Challenge 7b failed")

//• The string “abc” should return “abc”.
assert("abc".condenseUsingRegEx() == "abc", "2 Challenge 7b failed")

//: [Next](@next)
