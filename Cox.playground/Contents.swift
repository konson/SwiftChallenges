import UIKit
//
//Given an integer array, count element x such that x + 1 is also in the array. If there’re duplicates in the array, count them separately.
//
//Example 1Input: arr = [1, 3, 2, 3, 5, 0]
//
//Output: 3
//
//Example 2Input: arr = [1, 1, 3, 3, 5, 5, 7, 7]
//
//Output: 0


let arr = [1, 3, 2, 3, 5, 0]
let arr2 = [1, 1, 3, 3, 5, 5, 7, 7]
var count = 0

func getCount(number: [Int]) -> Int {
    arr.forEach { number in
        if arr.contains(number + 1) {
            count += 1
        }
    }
    
    return count
}


print(getCount(number: arr))
print(getCount(number: arr2))


