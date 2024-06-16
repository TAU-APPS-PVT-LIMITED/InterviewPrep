//: [Previous](@previous)

import Foundation

//left shift
//right shift >>
var num1 = 9
num1 = num1 >> 1
print("Num1 : \(num1)")
//following examples do the shift operation of 1 followed by & and then check integeral values against 0 and not the individual bit postion between the two.
/**
 1: 0000 0001
 1<<3: 0000 1000
 9:0000 1001 & (1<<3:0000 1000) => 0000 1000 which is not 0, here comparison is done on the integral value.
 hence :
 9:0000 1001 & (1<<3:0000 1000) != 0, is true
 9:0000 1001 & (1<<3:0000 1000) == 1, is false
*/
print("\(((1<<3) & 5) != 0) ")
print("\(((1<<3) & 8) != 0) ")
print("\(((1<<3) & 9) != 0) ")

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

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Check Kth bit is set or not
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

func isBitSet(forNum n: Int, atPos k:Int) -> Bool{
  print(n.signum())
  print(n.bitWidth)
  print(n.leadingZeroBitCount)
  print(n.trailingZeroBitCount)

  print("n >> k-1:\(n>>(k-1))")
  print("n >> k:\(n>>k)")
  //return ((n >> (k-1)) & 1) == 1
  //return ((n >> (k-1)) ^ 0) == 1
  return ((1 << (k-1)) & n) != 0
}

print("Bit 4 on num 8 is Set?:\(isBitSet(forNum: 8, atPos: 4))")
//: [Next](@next)
