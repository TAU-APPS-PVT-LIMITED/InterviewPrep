  //: [Previous](@previous)
  //Educative IO
  // Grokking With Bits

import Foundation

  //XOR examples


//Hamming Distance
//Given integers x, y find the # of positions where the corresponding bits are different.

  //default brute force approach
func hammingDistance_1(n1:Int, n2:Int) -> Int{
  var count = 0
  //mandatory go through all 32 bits
  for i in 0...31{
    if ((n1 >> i) ^ (n2  >> i) == 1){
      count += 1
    }
  }
  return count
}

print("Hamming distance between 15 & 11 :\(hammingDistance_1(n1: 15, n2: 11))")

//approach 2
func hammingDistance_2(n1:Int, n2:Int) -> Int{
  var count = 0
  var xor = n1 ^ n2
  
  while (xor ^ 0 != 0){
    //following logic : % 2 will give either 1 or 0, which would be the LSB, implying the LSB which is the XOR of n1 & n2 had differing bits
    if (xor % 2  == 1){
      count += 1 //increment count
    }
    xor >>= 1 //right shift by 1, divide by 2.
  }
  return count
}

print("Hamming distance between 15 & 11 :\(hammingDistance_2(n1: 15, n2: 11))")

//Brian Kernighan algo implementation
func hammingDistance_3(n1:Int, n2:Int) -> Int{
  var count = 0
  var xor = n1 ^ n2 //all differing bits would generate 1

  while (xor != 0){
    count += 1
    xor &= (xor - 1)
  }
  return count
}

print("Hamming distance between 15 & 11 :\(hammingDistance_3(n1: 15, n2: 11))")


  //We need to write a program to detect if two input integers have opposite signs.
func checkSignsOf(num1: Int, num2:Int) -> Bool{
  return (num1 << 1 ^ num2 << 1) == 0 //generates correct output
  //alternate
  //return (num1 ^ num2) < 0

    //if less than 0, then MSB is 1 which can only be when sign bits are different|output should not be boolean but string to return to make more sense
}

var (n1, n2) = (4,-5)
print("Signs of n1, n2 are same?: \(checkSignsOf(num1: n1, num2: n2))")
  //swap numbers
func swapNumber(num1:inout Int, num2:inout Int){

    //swapping number without using temp variable
  num1 ^= num2
  num2 ^= num1
  num1  ^= num2

}
(n1, n2) = (4,5)
swapNumber(num1: &n1, num2: &n2)
print("Post swap, n1:\(n1)")
print("Post swap, n2:\(n2)")

  //Find odd occurring element in an array

func getOddOne(from arr:[Int], element: inout Int){
  var result = arr[0]
    //  element = arr.reduce(result, ^) //generates output 5, incorrect
  element = arr.reduce(element, ^) //generates output 4, correct
                                   //  for val in arr{
                                   //    element = element ^ val
                                   //  } //generates the right output, 4
}

let arr = [1,1,3,3,4,5,5,6,6]
var oddOne = Int.zero
getOddOne(from: arr, element: &oddOne)
print("Odd one is :\(oddOne)")

  //: [Next](@next)
