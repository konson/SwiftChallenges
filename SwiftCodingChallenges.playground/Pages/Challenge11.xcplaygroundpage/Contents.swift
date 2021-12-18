//: [Previous](@previous)

import Foundation

//: [Previous](@previous)
//: # Challenge 11
//: ## Three different letters
//: ### Difficulty: Tricky
/*: Write a function that accepts two strings, and returns true if they are
 // identical in length
 // AND
 // have no more than three different letters,
 
 // taking case and string order into account.
 - - -
*/

func twoStringWeirdComparison(string1: String, string2: String) -> Bool {

    // identical in length
    guard string1.count == string2.count
    else { return false }

    // how many diff letters do they have?
    let diffLetterCount = Set(string1).subtracting(Set(string2)).count

    // are there no more than 3 diffs?
    guard diffLetterCount <= 3 else { return false }

    // taking string order into account.
    // filter out diff letters then compare results
    let filteredString1ByOnlySimilarLetters = string1.filter { string2.contains($0) }
    let filteredString2ByOnlySimilarLetters = string2.filter { string1.contains($0) }

    guard filteredString1ByOnlySimilarLetters == filteredString2ByOnlySimilarLetters
    else { return false }

    return true

}

// Paul Hudson's answer
//func twoStringWeirdComparison(string1: String, string2: String) -> Bool {
//    guard string1.count == string2.count else { return false }
//    let firstArray = Array(string1)
//    let secondArray = Array(string2)
//    var differences = 0
//
//    // enumerating through an array preserves order
//    for (index, letter) in firstArray.enumerated() {
//        if secondArray[index] != letter {
//            differences += 1
//            if differences == 4 {
//                return false
//            }
//        }
//    }
//    return true
//}



//
print(twoStringWeirdComparison(string1: "Clamp", string2: "Cramp"))

//• The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
assert(twoStringWeirdComparison(string1: "Clamp", string2: "Cramp") == true, "1 Challenge 11 failed")

//• The strings “Clamp” and “Crams” would return true, because there are two letter
//differences.
assert(twoStringWeirdComparison(string1: "Clamp", string2: "Crams") == true, "2 Challenge 11 failed")

//• The strings “Clamp” and “Grams” would return true, because there are three letter
//differences.
assert(twoStringWeirdComparison(string1: "Clamp", string2: "Grams") == true, "3 Challenge 11 failed")

//• The strings “Clamp” and “Grans” would return false, because there are four letter
//differences.
assert(twoStringWeirdComparison(string1: "Clamp", string2: "Grans") == false, "4 Challenge 11 failed")

//• The strings “Clamp” and “Clam” would return false, because they are different lengths.
assert(twoStringWeirdComparison(string1: "Clamp", string2: "Clam") == false, "5 Challenge 11 failed")

//• The strings “clamp” and “maple” should return false. Although they differ by only one
//letter, the letters that match are in different positions.
assert(twoStringWeirdComparison(string1: "clamp", string2: "maple") == false, "6 Challenge 11 failed")

assert(twoStringWeirdComparison(string1: "1234", string2: "12") == false, "6 Challenge 11 failed")

assert(twoStringWeirdComparison(string1: "1", string2: "1") == true, "7 Challenge 11 failed")


//: [Next](@next)
