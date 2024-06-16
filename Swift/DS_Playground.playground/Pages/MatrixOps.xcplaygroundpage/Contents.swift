//: [Previous](@previous)

import Foundation
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 You are given an m x n matrix accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank.

 Return the wealth that the richest customer has.

 Imagine every customer has multiple bank accounts, with each account holding a certain amount of money. The total wealth of a customer is calculated by summing all the money across all their multiple.
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

func maximumWealth(accounts:[[Int]]) -> Int{
  var maxVal = Int.zero
  for val in accounts {
    var sum = val.reduce(0, +)
    maxVal = maxVal > sum ? maxVal : sum
  }
return maxVal
}

print(maximumWealth(accounts: [[5,15,25],[10,20,30],[0,0,0]]))

//: [Next](@next)
