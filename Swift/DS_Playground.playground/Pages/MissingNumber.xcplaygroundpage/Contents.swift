//: [Previous](@previous)

import Cocoa

  //Educative IO
  // Grokking With Bits

/**
 Given an array nums containing n distinct numbers in the range [0, n], return the
 only number in the range that is missing from the array.

 */

  //brute force solution
func missingNum_1(arr:[Int], n:Int) -> Int{
    //since numbers are consecutive from 0..n, missing number would be diff of
    //∑n and sum of array numberss

    //0...n is n+1
  var n_sum = (n * (n+1))/2 //this will only give quotient
  var sum = arr.reduce(0, +)
  return n_sum - sum
}

  //2nd variant
func missingNum_2(arr:[Int], n:Int) -> Int{
//var res = 0
var res = arr.reduce(0, ^)
//  for i in arr{
//    res ^= i
//  }
res = Array(0...n).reduce(res, ^)
//  for i in 0...n{
//    res ^= i
//  }
//
  return res
}
//optimized
func missingNum_3(arr:[Int], n:Int) -> Int{
var res = n
  for (val, i) in arr.enumerated(){
    res ^= i ^ val
  }
  return res
}

let a:[Int] = [0,1,2,3,4,5,6,7,9,10]
print("Missing num is:\(missingNum_1(arr: a, n: 10))")
print("Missing num is:\(missingNum_2(arr: a, n: 10))")
print("Missing num is:\(missingNum_3(arr: a, n: 10))")

//: [Next](@next)
