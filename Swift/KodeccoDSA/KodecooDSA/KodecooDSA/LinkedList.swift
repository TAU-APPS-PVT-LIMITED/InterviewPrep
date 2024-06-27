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
    guard !self.isEmpty else {
        //#4
      self.head.next = .init(value: val)
      self.tail.next = self.head.next
      return
    }
    self.head.next = .init(value: val, next: self.head.next)
  }

  mutating func append(value val:Int){
    //appending the value is inserting a node in last
    guard !self.isEmpty else {
      self.push(value: val)
      return
    }
      //#4
    self.tail.next.next = .init(value: val)
    self.tail.next = self.tail.next.next
  }

  mutating func insert(value val:Int, at pos:Int){
    guard !self.isEmpty  || pos <= 0 else {
      self.push(value: val)
      return
    }

    var cntr = 1
    var currNode = self.head.next! //#4
    while cntr < pos {
      currNode = currNode.next
      cntr += 1
    }
    //we r at the node whose next is new node
    let n = IntNode(value: val, next:currNode.next)
    currNode.next = n
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
      let v = currentNode.next.value //get the value to return
      currentNode.next = nil //
      self.tail.next = currentNode //set the tail.next = currentNode,
      return v
    }
  }

  func describe(){
    guard !self.isEmpty else{
      print("head-->tail")
      return
    }
    var currentNode = self.head.next!
    var llstring = "head-->"
    while (currentNode.next != nil){
      llstring.append("\(currentNode.value)-->")
      currentNode = currentNode.next
    }
      //currently last element needs to be printed as nill check prevents it
    llstring.append("\(currentNode.value)-->tail")
    print(llstring)
//    var helper = "↑"
//    helper.append(String(repeating: " ", count: llstring.count - 2))
//    helper.append("↑")
//    print(helper)
//    helper = "H"
//    helper.append(String(repeating: "_", count: llstring.count - 1))
//    helper.append("T")
//    print(helper)
  }
}
