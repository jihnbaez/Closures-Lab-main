import UIKit
/*:
1) Create a closure assigned to a constant fourClosure that has no parameters and returns an Int. The body of the closure should always return the value 4. Call the closure once times..*/
let fourClosure = { ()-> Int in return 4 }
print(fourClosure())

/*:
2) Write a closure assigned to a constant square that takes an integer as input and returns its square */
let square = { (num: Int) -> Int in return num + num }
print(square(0))
/*:
3) Write a closure assigned to a constant sum that takes two integers as input and returns their sum:
*/
let sum = { (num: Int, num2: Int) -> Int in return num + num2 }
print(sum(3, 9))
/*:
4) Write  a closure assigned to a constant sumOfEvens that takes an array of integers as input and returns the sum of all even numbers
*/
let sumOfEvens = {(numbers: [Int]) -> Int in
    var total = 0
    for nums in numbers{
        if nums % 2 == 0
        {
            total += nums
        }
    }
    return total
}
print(sumOfEvens)


/*:
5) Using the code below, use the map function to create an array of Int values, whose values are equal to the original integer value, plus 1. Use $0 as you iterate through the values of the array. Print the resulting collection.
*/
let testScores = [65,80, 88, 90, 47]

let newTestScore = testScores.map({$0 + 1})
print((newTestScore))

/*:
6) Using the code below, use the filter function to create a new array of String values. The new array should only include Strings longer than four characters. Use $0 as you iterate through the values of the array.  Print the resulting collection.
*/

let subjects = ["Math", "Computer Science", "English", "Chemistry", "History", "Gym"]

let subs = subjects.filter({$0.count > 4} )
print(subs)

/*:
7) Using the code below, use the reduce function to subtract all of the values within the array from the starting value 100. Print the resulting value.
*/

let damageTaken = [25, 10, 15, 20, 0]
let reduc = damageTaken.reduce(100){$0 - $1}
print(reduc)

