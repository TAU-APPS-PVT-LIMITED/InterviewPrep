  //: [Previous](@previous)
  //Educative IO
  // Grokking With Bits

import Foundation

  //XOR examples


//Hamming Distance
//Given integers x, y finds the positions where the corresponding bits are different.


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
