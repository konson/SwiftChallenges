
//: [Previous](@previous)
//: # Notes
//: ## The things I don't want to forget
import Foundation

/*:  - - -
 Sets are unique, unordered
*/
let dupes = [1,1,1,2,3]
let uniqueSet = Set(dupes)
// note when you rerun this code the order in the set changes...
print("\n\(dupes) -> uniqueSet: \(uniqueSet)")

/*:  - - -
 `.replacingOccurrences` allows you to clean up the data in a string
*/

let string = "remove all these spaces please"
let noSpaces = string.replacingOccurrences(of: " ", with: "")
print("\n\(string) -> \(noSpaces)")

/*:  - - -
 Easily reverse a string with `.reversed()`
 but remember to convert back to a String
*/
let stringToReverse1 = "abcdefg"
let reversed1 = String(stringToReverse1.reversed())
print("\nReversed: \(stringToReverse1) -> \(reversed1)")

let stringToReverse2 = "Mom, look what I can do!"
let reversed2 = String(stringToReverse2.reversed())
print("\nReversed: \(stringToReverse2) -> \(reversed2)")

let stringToReverse3 = ""
let reversed3 = String(stringToReverse3.reversed())
print("\nReversed: \(stringToReverse3) -> \(reversed3)")

/*:  - - -
 Use `sorted()` to get a collection in the order you want
 
 NOTE: The sorting algorithm is not guaranteed to be stable. A stable sort preserves the relative order of elements that compare equal.
 
 Complexity: O(n log n), where n is the length of the sequence.
*/
let test1234 = "testtest 1234"
print("\n\(test1234) -> \(test1234.sorted())")

/*: - - -
 ## Does a String contain these letters?
 Remember to use Sets to see if a String contains any letters of another set of characters.
 `isSubset` is of particular use
 */


/*: ## You can create a single string using
joined().
 */
print("\n\(["This", "was", "an", "array", "but", "now", "is", "a", "sentence."].joined(separator: " "))")

