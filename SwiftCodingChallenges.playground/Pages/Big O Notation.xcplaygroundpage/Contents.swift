//: [Previous](@previous)

//: # Big O Notation
//: ### time complexity and big O notation
/*: ## Big O notation is used to classify algorithms, based on how their running time grows relative to the size of the input for the algorithm.
 - - -
 ![The real head of the household?]( 1920px-Comparison_computational_complexity.svg.png)
 Graphs of functions commonly used in the analysis of algorithms, showing the number of operations N versus input size n for each function
- N is increasing number of operations
- n is increasing input size
*/
/*: - - -
 ### Algorithms
 - computer programs that take input and produce output. Data goes in, the algorithm does some work, and a result comes out. Examples are sorting data alphabetically, or the recommendation algorithm described earlier.
 
 
 ### Classification
 - means “to sort things in groups”. Some algorithms go in group A, because all algorithms in group A share a particular characteristic. Other algos go in group B, because they share another characteristic.
 
*/
/*: - - -
 ### Big O notation classifies algorithms in these groups, ordered from best to worst performance:
-  __O(1)__, called constant time
-  __O(log n)__, called logaritmic time
-  __O(n)__, called linear time
-  __O(n2)__, called quadratic time
 
*/
/*: - - -
 ## Links
 
 - [https://learnappmaking.com/big-o-notation-swift/](https://learnappmaking.com/big-o-notation-swift/)
 
 */
/*: - - -
 ### Time
 Big O notation says nothing about how much actual time, i.e. seconds, it takes for an algorithm to do its work. It says something about the time relative to the size of the input.
 
 
 As the input for an algorithm gets bigger, how fast does the runtime grow?
 - When the input grows 2x, do we need to do twice as much work?
 - When the input grows 2x, do we need to do 4x as much?
 - When the input grows 2x, do we need to do the same amount of work?
 
 - - -
 
 With big O notation, there are two things we also talk about:
 - How fast the runtime grows for arbitrarily large input sizes
 - The worst case and average case scenarios for an algorithm
 
 */
/*: - - -
 ### Constant Time With O(1)
 
 - Will always execute in the same time (or space) regardless of the size of the input
 - Will execute efficiently regardless of the size of the input
 
 Why is it so fast?
 
 
 The algorithm to retrieve an item from an array by __index number can directly calculate the memory address of that data__, based on the index. It doesn’t have to iterate or search the array – it’s a direct, instant operation.
 
 So if we have an array of count 5 or 5 million the ___efficiency__ does not change. It does not get exponentially longer as the soze of data grows.:
*/
         import Foundation

         let names = ["Zaphod", "Trillian", "Arthur", "Marvin", "Humma"]
         let name = names[2]

/*: - - -
 ### Logarithmic Time With O(log n)
 An algorithm that runs in O(log n) reduces the amount of work it needs to do as it progresses through the data set. The more work it does, the less work it still has to do. This produces a growth curve that is logarithmic.
 */
         func binarySearch(in numbers: [Int], for value: Int) -> Int?
         {
             var left = 0
             var right = numbers.count - 1

             while left <= right {

                 let middle = Int(floor(Double(left + right) / 2.0))

                 print("Looking for \(value) in \(numbers[left...right])")
                 print("Middle index is \(middle), middle value is \(numbers[middle])")

                 if numbers[middle] < value {
                     print("\(numbers[middle]) is smaller than \(value), choosing right half of array")
                     left = middle + 1
                 } else if numbers[middle] > value {
                     print("\(numbers[middle]) is bigger than \(value), choosing left half of array")
                     right = middle - 1
                 } else {
                     return middle
                 }
             }

             return nil
         }

        let numberOfInts = [100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000]
        print("")
        print(binarySearch(in: numberOfInts, for: 1000)!)
        print("")
        print(binarySearch(in: numberOfInts, for: 200)!)

/*: - - -
 ### Linear Time With O(n)
 This means that the time the algorithm takes to complete grows linearly with the size of the input. With twice the input, we need to do twice the amount of work. An O(n) algorithm that processes an array with 100 items has to do ten times as much work, compared to the same algorithm that processes an array with 10 items.
 
 A good example of a logarithmic time complexity is binary search. With binary search we’re looking for a certain number in a sorted array of numbers.
 */
     let numbers = [8, 5, 2, 10, 17, 2, 11]
     var sum = 0

     for number in numbers {
         sum += number
     }
     print("")
     print(sum)

/*: - - -
 ### Quadratic Time With O(n2)
 This is where we really have to do some work. For algorithms that run in quadratic time, with O(n2), the time it takes to run them grows directly proportional to the square of the size of the input.
 - For 1x input, we have to do 1x work
 - For 2x input, we have to do 4x work
 - For 4x input, we have to do 16x work
 - For one million songs, we have to do – a sh*t ton of work!
*/
print("")
print("")
let copyNumberOfInts = Array(1...100)
//[1,2,3,4,1,2,3,4,12,3,1,2,3,4,1,2,3,4,12,3,1,2,3,4,1,2,3,4,12,3,1,2,3,4,1,2,3,4,12,3,1,2,3,4,1,2,3,4,12,3,1,2,3,4,1,2,3,4,12,3,1,2,3,4,1,2,3,4,12,3,1,2,3,4,1,2,3,4,12,3]
var count = 0

for _ in copyNumberOfInts {

     for _ in copyNumberOfInts
     {
         count += 1
     }
 }


print("There are \(copyNumberOfInts.count) items in array and made \(count) iterations")

/*: - - -
## Examples in real life
   

How much work (ie how many operations/time) would it take to run these in the best, average, and worst case scenarios? Think of how each algorithm classification would respond to different sets of data. For example, in the case of finding your friend's house what if the set of addresses are limited to one block, to a town or to entire country? What if the address doesn't even exist?

*/
/*:
###  __O(1)__, constant time
Find your friends house with a given address.
No time at all! We have the exact address. Just like subscripts for collections. Having the index of an array as in `let myFriendsHouse = allAddresses[3]` will calculate the address where it is stored in memory. It is the same amount of work no matter what the address.
 
*/
/*:
###  __O(log n)__, logaritmic time
Guess a number from 1 to some upper limit.
Using a binary search your effort **decreases** with each subsequent effort. Is number in lower half? Yes? Then we know it's somewhere between 1 and halfway. Is it in the lower half of this bottom half? Continue until you are left with only 2 numbers to pick from. To wittle it down to 2 options takes surprisingly few iterations! Your past effort decreases future effort with each time.
 
*/
/*:
###  __O(n)__, linear time
Find your friend's house without an address.
Remember looking for your friend? What if you didn't have the address? All you know is his name and what he looks like. You'd have to knock on EVERY door once looking for your friend's house describing what you know about him. For each house in you search area you'd have to make one effort of knocking on the door. In coding terms this is like looping through an array and preforming a check on each iteration
 
            // return true if you found my friend
           houses.forEach { house in
               return house.ownerName == myFriendsName
           }

*/
/*:
  ###  __O(n2)__, quadratic time
 The time it takes to run these grows directly proportional to the square of the size of the input. This usually happens with nested loops. Let's say you are a detective looking for a fugative with a set of addresses of people hiding locations. Knocking on each door would be a linear, O(n), algorithm on it's own. But what if you're looking for leads so you ask each person you visit if they know the other addressses/people on your list. So you would iterate once over your list then for each person you would iterate over your list __again__. That can be expressed in n * n or n squared.

        allPossibleFugativeAddresses.forEach { person in
            if fugativeHidingAtThisHouse {
                RAID!!!
            } else  {
                // ask about other contacts
                allPossibleFugativeConnections.forEach { person in
                    doYouKnowThisDude?
                }
            }
        }

*/

/*:  - - -
 Template for headers
*/
        let test = "test test"
        print("")
        print("\n\(test) -> \(test)")


/*:
  Sample on how to show code block. I guess the indentation defines it?
  A loop to print each character on a seperate line
 
     for characasdafter in "Aesop" {
         println(character)
     }
     
     print(""wtf?")
 */


//: [Next](@next)
