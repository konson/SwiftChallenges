//
//  TestCardShuffle.swift
//  testBenchmark
//
//  Created by Alecs Konson on 12/5/21.
//

import Foundation

struct TestCardShuffle: Shuffleable {

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
    
    struct DeckOfCards: Shuffleable {
        // singleton??
        
        var standardDeck = [PlayingCard]()
        
        init() {
            self.standardDeck = standardDeckOf52()
        }
        
        mutating func shuffleDeck() {
            standardDeck = shuffle(self.standardDeck)
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
    
//    print(shuffle(Array(0...1000)))
//    var deck = DeckOfCards()
//    deck.prettyPrint()
//    
//    deck.prettyPrint()
//    deck.shuffleDeck()
//    
//    print("")
//    print("")
//    print("")
//    print("AFTER first shuffle!!!!!!!!!!!!!!!!!")
//    print("")
//    print("")
//    print("")
//    
//    deck.prettyPrint()
//    
//    deck.shuffleDeck()
//    
//    print("")
//    print("")
//    print("")
//    print("AFTER second shuffle!!!!!!!!!!!!!!!!!")
//    print("")
//    print("")
//    print("")
//    
//    deck.prettyPrint()
    
}
