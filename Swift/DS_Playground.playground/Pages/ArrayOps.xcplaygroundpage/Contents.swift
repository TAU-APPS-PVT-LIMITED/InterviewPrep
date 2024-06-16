//: [Previous](@previous)

import Foundation

//Design Gurus
//Grokking Algos and DS

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
    dict[val, default:0] += 1
    if dict[val]! > 1{
      return true
    }
  }
  return false
}

print("Checking duplicates in [1,2,3,4]:\(containsDuplicates(inArr:[1,2,3,4]))")
print("Checking duplicates in [1,2,3,4,1]:\(containsDuplicates(inArr:[1,2,3,4,1]))")
//: [Next](@next)
