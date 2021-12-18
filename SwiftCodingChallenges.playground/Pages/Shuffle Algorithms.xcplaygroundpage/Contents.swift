//: [Previous](@previous)

import Foundation

var items = ["A", "B", "C", "D", "E", "F", "G", "H"]


func shuffle<T>(_ array: [T]) -> [T] {
    var shuffled = array
    shuffled = [] // hack to get shuffled to be same datatype as Generic
    
    print("starting count: \(array.count)")
    
    var indexesSet = Set(0...array.count - 1) // set to match indexes of array

    for _ in 0..<array.count {
        
        /* randomElement() documentation says...Complexity: O(1) if the collection conforms to RandomAccessCollection; otherwise, O(n), where n is the length of the collection. The Set documentation doesn't show it conforms to RandomAccessCollection
         https://developer.apple.com/documentation/swift/set so looks like O(n)
         */
        guard let rand = indexesSet.randomElement() else { return [] }
        
        shuffled.append(array[rand])
        indexesSet.remove(rand) // remove the used index from set
    }
    print("ending count: \(shuffled.count)")
    return shuffled
}

print(shuffle(items))

//Shuffle Cards

enum Suit: String, CaseIterable {
    case hearts
    case spades
    case diamonds
    case clubs
    
    var color: String {
        switch self {
        case .hearts, .diamonds:
           return "red"
        case .spades, .clubs:
           return "black"
        }
    }
}

enum CardLevel: Int, CaseIterable {
    case ace
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case jack
    case queen
    case king
}

struct PlayingCard {
    let cardLevel: CardLevel
    let suit: Suit
    
    var prettyPrinted: String {
        "\(cardLevel) \tof \(suit)"
    }
}

struct DeckOfCards {
    // singleton??
    
    var standardDeck = [PlayingCard]()
    
    init() {
        self.standardDeck = standardDeckOf52()
    }
    
    mutating func shuffleDeck() {
        standardDeck = shuffle(standardDeck)
    }
    
    func standardDeckOf52() -> [PlayingCard] {
        var deck = [PlayingCard]()
        // generate cards
        Suit.allCases.forEach { suit in
            CardLevel.allCases.forEach { level in
                deck.append(PlayingCard(cardLevel: level, suit: suit))
            }
        }
        return deck
    }
    
    func prettyPrint() {
        self.standardDeck.forEach { card in
            print(card.prettyPrinted)
        }
    }
}

print(shuffle(Array(0...1000)))
var deck = DeckOfCards()
deck.prettyPrint()

deck.prettyPrint()
deck.shuffleDeck()

print("")
print("")
print("")
print("AFTER first shuffle!!!!!!!!!!!!!!!!!")
print("")
print("")
print("")

deck.prettyPrint()

deck.shuffleDeck()

print("")
print("")
print("")
print("AFTER second shuffle!!!!!!!!!!!!!!!!!")
print("")
print("")
print("")

deck.prettyPrint()



//: [Next](@next)
