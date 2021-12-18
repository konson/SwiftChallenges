//: [Previous](@previous)

import Foundation

let colors = ["red", "red", "blue","blue","blue","blue","blue","blue","blue","blue","blue", "blue", "blue", "green", "yellow", "purple", "gold", "silver", "silver", "silver", "silver", "silver", "maroon", "pink", "pink", "pink", "pink", "mint", "black", "white", "mauve", "mauve", "mauve", "mauve", "mauve", "mauve", "mauve", "mauve", "mauve", "mauve", "mauve"]

func getTopColors(forColors colors: [String]) ->  [String] {
    
    var colorsDictionary: [String: Int] = [:]
    
    var topColors: [String] = []
    
    colors.forEach { color in
        if let count = colorsDictionary[color] {
            colorsDictionary[color] = count + 1
        } else {
            colorsDictionary[color] = 1
        }
    }
    
    dump(colorsDictionary)
    
    colorsDictionary.forEach { (color, count) in
        let highestValue = colorsDictionary.values.max()
        if colorsDictionary[color] == highestValue {
            topColors.append(color)
        }
    }

    return topColors

}

print(getTopColors(forColors: colors))

//: [Next](@next)
