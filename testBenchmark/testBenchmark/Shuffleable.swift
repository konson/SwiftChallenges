//
//  Shuffleable.swift
//  testBenchmark
//
//  Created by Alecs Konson on 12/5/21.
//

import Foundation

protocol Shuffleable {
    func shuffle<T>(_ array: [T]) -> [T]
}


extension Shuffleable {
    
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
}
