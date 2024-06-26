  //
  //  LinkedList.swift
  //  kodeccodsa
  //
  //  Created by Gaurav Gupta on 25/06/2024.
  //

import Foundation
/**
 Notes:
 Various linkedlist implementations:
 
 1. head.next-->1st node-->2nd node....-->nth node.next--> tail   [tail.next = nil and tail.val = 0]
     head node needs memory allocation, tail node remains a mere pointer
 2. head-->1st node-->2nd node....-->nth node.next--> tail
     head is a pointer, no mem allocation, same behavior for tail.
 3  1st node-->2nd node....-->Nth node   [Nth.next = nil]
        ↑                                            ↑
       head                                       tail
       both head and tail are pointers, no memory allocation
 4. 1st node-->2nd node....-->Nth node   [Nth.next = nil]
                ↑                                            ↑
      head.next                                 tail.next
      both head and tail need memory allocation.
 */

struct IntLL{

  var head: IntNode!
  var tail:IntNode!

  init() {
    self.tail = .init(value:.zero)
    self.head = .init(value: .zero, next: self.tail)
  }

  var isEmpty:Bool {
    self.head.next == self.tail
  }
}

extension IntLL {
  mutating func push(value val:Int){
    /*
     push is always inserting in the front, which is the head portion.
     generate a node, and point to current head node
     update head.next to newly created node
     update tail
     */
    if !self.isEmpty{
      self.head.next = .init(value: val, next: self.head.next)
    }else {
        //#4 design implementation
      self.head.next = .init(value: val)
      self.tail.next = self.head.next
    }
  }

  @discardableResult
  mutating func pop() -> Int!{
    /**
     pop fom the last, which is last node before the tail
     h-->1-->2-->3-->4-->tail
     pop on list will remove 4 and it looks like:
     h-->1-->2-->3-->tail

     steps:
     1. traverse till the node before the last node
     2. set its next node as tail
     return popped value
     */
    guard !self.isEmpty else{
      print("Nothing to pop, list is empty")
      return nil
    }
    var currentNode = self.head.next!
    //#4: keep moving till current node is same as next of tail.
    //handling single node
    if tail.next == currentNode {
      self.head.next = self.tail
      self.tail.next = nil //very very important step.
      return currentNode.value
    }else {
      while (currentNode.next != tail.next){
        currentNode = currentNode.next
      }
      self.tail.next = currentNode
      let v = currentNode.next.value
      self.tail.next.next  = nil
      return v
    }
  }

  func describe(){
    guard !self.isEmpty else{
      print("head-->tail")
      return
    }
    var currentNode = self.head.next!
    print("head-->",terminator: "")
    while (currentNode.next != nil){
      print("\(currentNode.value)-->", terminator: "")
      currentNode = currentNode.next
    }
      //currently last element needs to be printed as nill check prevents it
      //#4 consideration, print tail element
    print("\(self.tail.next.value)-->tail")
  }
}
