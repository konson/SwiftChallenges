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
    
    var passInLetter = ""
    var passInWord = ""
    
    if wordLength == 0 {
        print("wordLength == 0: \(wordLength == 0)")
        return resultArray
    } else {
        
        let firstLetterCount = totalResultWords / wordLength
        print("firstLetterCount: \(firstLetterCount)")
        
        for (letterIndex, letter) in arrayOfWord.enumerated() {
                for i in 1...firstLetterCount {
                    print("resultArray: \(resultArray), i = \(i)")
                    resultArray.append(String(letter))
                    //                resultArray.map { $0 + String(letter) }
                    if letterIndex != wordLength - 1 { // if not on last letter
                        
                        // remove the first letter
                        print("BEFORE word: \(word), leter: \(String(letter))")
                        word.removeAll { $0 == letter }
                        print("AFTER word: \(word)")
                        passInLetter = String(letter)
                        passInWord = word
                        //                    arrayOfAllTheWords(theWord: String(word), currentString: String(letter))
                    }
                }
            }
        return arrayOfAllTheWords(theWord: passInWord, currentString: passInLetter)
        
    }
}



print(arrayOfAllTheWords(theWord: "cats"))

//print(["", "", ""].map { $0 + "z" })


print("hello")
