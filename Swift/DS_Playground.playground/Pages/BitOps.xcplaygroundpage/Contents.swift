//: [Previous](@previous)

import Foundation

//left shift
//right shift >>
var num1 = 9
num1 = num1 >> 1
print("Num1 : \(num1)")

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 Find the bit length of a number
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

func bitLen(num:Int) -> Int {
  var bitcounter = 0
  while (( 1 << bitcounter) <= num){
    bitcounter += 1
  }
  return bitcounter
}

print("Bit length of 14 is : \(bitLen(num: 14))")
print("Bit length of 14 is : \(bitLen(num: 44))")
//: [Next](@next)
