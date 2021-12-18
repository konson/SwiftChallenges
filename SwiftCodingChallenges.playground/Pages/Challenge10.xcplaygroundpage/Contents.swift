//: [Previous](@previous)
//: # Challenge 10
//: ## Vowels and consonants
//: ### Difficulty: Tricky
/*: Given a string in English, return a tuple containing the number of vowels and consonants.
 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K,
 L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
 - - -
### Sample input and output
 - The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 - The input “Mississippi” should return 4 vowels and 7 consonants.
*/
import Foundation

extension String {
    
    var tupleWithStats: (vowels: Int, consonants: Int) {
        let lettersOnly = self.lowercased().filter { $0 >= "a" && $0 <= "z" }
        let vowelsSet = Set("aeiou")
        
        var countVowel = 0
        var countConsonant = 0
        
        lettersOnly.forEach { char in
            if Set(String(char)).isSubset(of: vowelsSet) {
                countVowel += 1
            } else {
                countConsonant += 1
            }
        }
        return (countVowel, countConsonant)
    }
}

assert("Swift Coding Challenges".tupleWithStats == (6, 15), "1 Challenge 10 failed")
assert("Mississippi. 123987@#%$%".tupleWithStats == (4, 7), "2 Challenge 10 failed")

//: [Next](@next)
