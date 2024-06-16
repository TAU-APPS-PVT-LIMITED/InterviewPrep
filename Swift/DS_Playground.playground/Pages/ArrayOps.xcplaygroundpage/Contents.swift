//: [Previous](@previous)

import Foundation

//Design Gurus
//Grokking Algos and DS


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 A bike rider is going on a ride. The road contains n + 1 points at different altitudes. The rider starts from point 0 at an altitude of 0.

 Given an array of integers gain of length n, where gain[i] represents the net gain in altitude between points i and i + 1 for all (0 <= i < n), return the highest altitude of a point.
 Examples

 Example 1

 Input: gain = [-5, 1, 5, 0, -7]
 Expected Output: 1
 Justification: The altitude changes are [-5, -4, 1, 1, -6], where 1 is the highest altitude reached.
 Example 2

 Input: gain = [4, -3, 2, -1, -2]
 Expected Output: 4
 Justification: The altitude changes are [4, 1, 3, 2, 0], where 4 is the highest altitude reached.
 Example 3

 Input: gain = [2, 2, -3, -1, 2, 1, -5]
 Expected Output: 4
 Justification: The altitude changes are [2, 4, 1, 0, 2, 3, -2], where 4 is the highest altitude reached.
 Constraints:

 n == gain.length
 1 <= n <= 100
 -100 <= gain[i] <= 100

 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Given an input array of integers nums, find an integer array, let's call it differenceArray, of the same length as an input integer array.
 Each element of differenceArray, i.e., differenceArray[i], should be calculated as follows: take the sum of all elements to the left of index i in array nums (denoted as leftSum[i]), and subtract it from the sum of all elements to the right of index i in array nums (denoted as rightSum[i]), taking the absolute value of the result. Formally:
 differenceArray[i] = | leftSum[i] - rightSum[i] |
 If there are no elements to the left/right of i, the corresponding sum should be taken as 0.
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Given a one-dimensional array of integers, create a new array that represents the running sum of the original array.

 The running sum at position i in the new array is calculated as the sum of all the numbers in the original array from the 0th index up to the i-th index (inclusive). Formally, the resulting array should be computed as follows: result[i] = sum(nums[0] + nums[1] + ... + nums[i]) for each i from 0 to the length of the array minus one.
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

func runningSum(forArr arr:Array<Int>) -> Array<Int>{
  var result = [Int]()
  for i in 0..<arr.count{
    var sum = 0
    sum = arr[0...i].reduce(sum, +)
    result.append(sum)
  }
  return result
}

let arr = [1,1,1,1,1,1,1,1,1,1]
print("running sum is \(runningSum(forArr:arr))")

  //optimized solution
func runningSum2(forArr arr:Array<Int>) -> Array<Int>{
  var result = arr
  for i in 1..<arr.count{
    result[i] = result[i-1] + arr[i]
  }
  return result
}

print("running sum is \(runningSum2(forArr:arr))")

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct. +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

func containsDuplicates(inArr arr:[Int])->Bool{

    //dictionary approach
  var dict = [Int:Int]()
  var count = 0
  for val in arr{
    //approach1
//    dict[val, default:0] += 1
//    if dict[val]! > 1{
//      return true
//    }
    //approach 2
    if ((dict[val, default: 0] ^ val) == 0){
      return true
    }else {
      dict[val] = val
    }
  }
  return false
}
print("Checking duplicates in [1,2,3,4]:\(containsDuplicates(inArr:[1,2,3,4]))")
print("Checking duplicates in [1,2,3,4,1]:\(containsDuplicates(inArr:[1,2,3,4,1]))")
print("Checking duplicates in [1,1,3,4,1]:\(containsDuplicates(inArr:[1,1,3,4,1]))")

func containsDuplicates_1(inArr arr:[Int])->Bool{
  //set approach
  var dupSet = Set<Int>()
  for val in arr{
    if dupSet.contains(val){
      return true
    }else{
      dupSet.insert(val)
    }
  }
  return false
}

print("Checking duplicates in [1,2,3,4]:\(containsDuplicates_1(inArr:[1,2,3,4]))")
print("Checking duplicates in [1,2,3,4,1]:\(containsDuplicates_1(inArr:[1,2,3,4,1]))")
print("Checking duplicates in [1,1,3,4,1]:\(containsDuplicates_1(inArr:[1,1,3,4,1]))")

func containsDuplicates_2(inArr arr:[Int])->Bool{
  //sort and single pass
  let tmp = arr.lazy.sorted() //O(nlogn)

  for i in 0..<tmp.count{
    if i+1 < tmp.count{
      if tmp[i] == tmp[i+1]{
        return true
      }
    }else {
      return false
    }
  }
  return false
}

print("Checking duplicates in [1,2,3,4]:\(containsDuplicates_2(inArr:[1,2,3,4]))")
print("Checking duplicates in [1,2,3,4,1]:\(containsDuplicates_2(inArr:[1,2,3,4,1]))")
print("Checking duplicates in [1,1,3,4,1]:\(containsDuplicates_2(inArr:[1,1,3,4,1]))")


//: [Next](@next)
