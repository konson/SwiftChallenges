import Foundation

func factorial(of value: Int) -> Int {
    (1...value).reduce(1, *)
}

func  arrayOfAllTheWords(theWord: String, currentString: String = "") -> [String] {
    var word = theWord
    let arrayOfWord = Array(theWord)
    let wordLength = word.count
    var resultArray = [String]()
    let totalResultWords = factorial(of: wordLength)
    print("fact: \(totalResultWords)")

    if wordLength == 0 {
        return resultArray
    } else {

        let firstLetterCount = totalResultWords / wordLength
        print("firstLetterCount: \(firstLetterCount)")
        
        for (letterIndex, letter) in arrayOfWord.enumerated() {
            for _ in 1...firstLetterCount {
                
                resultArray.append(String(letter))
                if letterIndex != wordLength - 1 { // if not on last letter
 
                    // remove the first letter
                    word.removeAll { $0 == letter }
                    print(word, String(letter))
                    arrayOfAllTheWords(theWord: String(word), currentString: String(letter))
                }
            }
        }
        return resultArray
    }
}

print(arrayOfAllTheWords(theWord: "cat"))


print("hello")


