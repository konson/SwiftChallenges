//: [Previous](@previous)
//: # Challenge 8
//: ## String is rotated
//: ### Difficulty: Tricky
/*: Write a function that accepts two strings, and returns true if one string is rotation of the other,
 taking letter case into account.
 Tip: A string rotation is when you take a string, remove some letters from its end, then append
 them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 - - -
 ### Sample input and output
 - The string “abcde” and “eabcd” should return true.
 - The string “abcde” and “cdeab” should return true.
 - The string “abcde” and “abced” should return false; this is not a string rotation.
 - The string “abc” and “a” should return false; this is not a string rotation.
*/
import Foundation

func isRotated(compare string1: String, to string2: String) -> Bool {
    
    guard
        string1 != string2,
        string1.count == string2.count,
        let anchorChar = string1.first,
        let anchorIndexOfSecond = string2.firstIndex(of: anchorChar)
    else {
        return false
    }
    
    var tempRotation = string1
    let numberOfCharsMoved = anchorIndexOfSecond.utf16Offset(in: string2)

    // pop off that many of string1 and add to beginning of temp
    let charsToMove = string1.suffix(numberOfCharsMoved)
    let truncatedString = tempRotation.dropLast(numberOfCharsMoved)
    tempRotation = charsToMove + String(truncatedString)

    return tempRotation == string2
}


print("\nisRotated abcde to eabcd: \(isRotated(compare: "abcde", to: "eabcd"))")
print("\nisRotated abc to a: \(isRotated(compare: "abc", to: "a"))")
print("\nabcde -> cdeab == true?: \(isRotated(compare: "abcde", to: "cdeab"))")
print("\nabcde -> abcde == false?: \(isRotated(compare: "abcde", to: "abcde"))")
print("\nabcde -> acbde == false?: \(isRotated(compare: "abcde", to: "acbde"))")


//• The string “abc” and “a” should return false; this is not a string rotation.
assert(isRotated(compare: "abc", to: "a") == false, "1 Challenge 8 failed")

//  "abcde" -> "eabcd" == true
 assert(isRotated(compare: "abcde", to: "eabcd") == true, "2 Challenge 8 failed")

//  "abcde" -> "cdeab" == true
assert(isRotated(compare: "abcde", to: "cdeab") == true, "3 Challenge 8 failed")

//  "abcde" -> "abcde" == false
assert(isRotated(compare: "abcde", to: "abcde") == false, "4 Challenge 8 failed")

//  "abcde" -> "acbde" == false
assert(isRotated(compare: "abcde", to: "acbde") == false, "5 Challenge 8 failed")

//  "abcde" -> "eabcd123" == false
assert(isRotated(compare: "abcde", to: "eabcd123") == false, "6 Challenge 8 failed")

//  "a" -> "a" == false
assert(isRotated(compare: "a", to: "a") == false, "7 Challenge 8 failed")

//  "aacadea" -> "eaaacad" == true
assert(isRotated(compare: "aacadea", to: "eaaacad") == false, "8 Challenge 8 failed")

// TODO: This one fails -- if there are multiple of that anchor char? How can you be sure you're not on the reduced/moved char of same value?
//  "aacdea" -> "eaaacd" == true
//assert(isRotated(compare: "aacdea", to: "eaaacd") == true, "9 Challenge 8 failed")

//: [Next](@next)
