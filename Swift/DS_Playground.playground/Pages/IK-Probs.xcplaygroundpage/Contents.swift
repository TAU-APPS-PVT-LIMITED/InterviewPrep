//: [Previous](@previous)

import Foundation

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Given an array of numbers, rearrange them in-place so that even numbers appear before odd ones.
 It is important to practice solving this problem by rearranging numbers in-place.
 There is no need to preserve the original order within the even and within the odd numbers.
 We look for a solution of the linear time complexity that uses constant auxiliary space.
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

func segregate_evens_and_odds(numbers: [Int]) -> [Int] {
  var tmp = numbers
  for i in 0..<numbers.count{
    var j = numbers.count - 1 - i
    if ((tmp[i] & 1) == 1)
  }

  return []
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Given some balls of three colors arranged in a line, rearrange them such that all the red balls go first, then green and then blue ones.

 Do rearrange the balls in place. A solution that simply counts colors and overwrites the array is not the one we are looking for.

 This is an important problem in search algorithms theory proposed by Dutch computer scientist Edsger Dijkstra. Dutch national flag has three colors (albeit different from ones used in this problem).
 Constraints:

 1 <= n <= 100000
 Do this in ONE pass over the array, NOT TWO passes
 Solution is only allowed to use constant extra memory
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

func dutch_flag_sort(balls: inout [Character]) -> [Character] {
  var front = 0
  let t = balls.count - 1
  var back = t - front
  while (front < back){
    if balls[front] == 
  }
  return []
}

//: [Next](@next)
