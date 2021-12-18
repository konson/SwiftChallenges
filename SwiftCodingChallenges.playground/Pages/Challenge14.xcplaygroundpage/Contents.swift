//: [Previous](@previous)
//: # Challenge 14
//: ## String permutations
//: ### Difficulty: Taxing
/*: Write a function that prints all possible permutations of a given input string.
 
 
 Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a
 permutation of “wombat”.
 - - -
### Sample input and output
 - The string “a” should print “a”.
 - The string “ab” should “ab”, “ba”.
 - The string “abc” should print “abc”, “acb”, “bac”, “bca”,
*/

import Foundation

func factorial(of value: Int) -> Int {
    (1...value).reduce(1, *)
}


// his solution, not mine
func challenge14(counter: inout Int, string: String, current: String = "") -> [String] {

    var resultArray = [String]()
    
    
    let length = string.count
    let strArray = Array(string)
    print("iterating: \(string)")
    
    if (length == 0) { // everything has been rearranged. no more letters to iterater thru.
        counter += 1
        // there's nothing left to re-arrange
        print("result AFTER: \(current)\n")
        resultArray.append(current)
    } else {
        // loop through every character
        print("   length: \(length)")
        for i in 0 ..< length {
            print("   Index: \(i), letter \(String(strArray[i])), strArray: \(string)")
            // get the letters before me
            let left = String(strArray[0 ..< i])
            // get the letters after me
            let right = String(strArray[i+1 ..< length])
            

            print("      result BEFORE: \(current), passing in L+R: \(left)+\(right), NEW result: \(current)+\(String(strArray[i]))\n")
            counter += 1
            
            // put those two together and carry on
            resultArray.append(contentsOf: challenge14(counter: &counter, string: left + right, current: current +
                        String(strArray[i])))
        }

    }
    return resultArray
}


//print(allThePermutations("womb"))
var counter = 0
print(challenge14(counter: &counter, string: "cats"))


/// This is my solution. I'm not proud. Big 0(infinity???) algorithm
func allThePermutations(_ input: String) -> Set<String> {
    var counter = 0
    
    let inputArray = Array(input)
    var returnSet: Set = [input] // prime it with itself
    let setOfLetters = Set(inputArray)
    let possibleCombos = factorial(of: setOfLetters.count)
    
    while returnSet.count < possibleCombos {
        counter += 1
        // ode to Rosencrantz and Guildenstern
        let attemptString = String(setOfLetters.shuffled()) // this is so bad but had to try it
        returnSet.insert(attemptString)
    }
    
    print("allThePermutations iterations: \(counter)")
    return returnSet
}


assert(allThePermutations("a") == ["a"], "1 Challenge 14 failed")
assert(allThePermutations("ab") == ["ab", "ba"], "2 Challenge 14 failed")
assert(allThePermutations("abc") == ["abc", "acb", "bac", "bca", "cab", "cba"], "3 Challenge 14 failed")

//: [Next](@next)
