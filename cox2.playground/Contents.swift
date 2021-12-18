import UIKit

// Given an array, write a function to move all 0s to the end of it while maintaining the relative order of the non-zero elements.

func moveZeros(numbers: [Int]) -> [Int] {
    
    let prefixArray = numbers.filter { $0 != 0 }
    let zeroes = numbers.filter { $0 == 0 }
    
    return prefixArray + zeroes
}

assert(moveZeros(numbers: [0,1,2,3])        == [1,2,3,0],       "bad thing1")
assert(moveZeros(numbers: [0,1,0,2,3])      == [1,2,3,0,0],     "bad thing2")
assert(moveZeros(numbers: [0])              == [0],             "bad thing3")
assert(moveZeros(numbers: [0,0])            == [0,0],           "bad thing4")
assert(moveZeros(numbers: [1, 2, 3, 0, 0])  == [1, 2, 3, 0, 0], "bad thing5")


