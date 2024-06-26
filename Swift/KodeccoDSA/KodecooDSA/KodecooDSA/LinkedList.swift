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
      //    self.head = nil
      //    self.tail = nil
      //    self.head.next = self.tail
    /*
     error: Unexpectedly found nil while implicitly unwrapping an Optional value
     cause: self.head.next = self.tail
     now to fix the error, one would need to allocate memory for head node, call in init method. This would cause additional
     memory allocation, which is not a desirable approach.
     */
    self.head = self.tail // using this, self.head.next == self.tail fails as next of head is not tail anymore
  }

  var isEmpty:Bool {
    self.head == self.tail
  }
}

extension IntLL {
  mutating func push(value val:Int){
      /*
       push is always inserting in the front, which is the head portion.
       generate a node, and point to next node of current head node
       var n = IntNode(value: val, next:self.head.next)
       update head.next to newly created node
       self.head.next = n
       */
    print("value to push: \(val)")
    //combining the above 2 in 1 statement
    self.head.next = IntNode(value: val, next:self.head.next)
    //above statement takes care of empty list as node is inserted right between, head and tail with node.next = tail
  }

  mutating func pop(){
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

    var next = self.head.next
    while (next?.next.next != tail){
      next = next?.next
    }
    print("value to be popped: \(next?.next.value)")
    next?.next = self.tail
  }

  func describe(){
    var t = self.head.next
    print("head -->",terminator: "")
    while (t?.next != self.tail){
      print("\(String(describing: t?.value))-->", terminator: "")
      t = t?.next
    }
    print("-->tail",terminator: "")
  }
}

  //struct LL{
  //  var head:iNode!
  //  var tail:iNode!
  //
  //  init(){
  //    head.value = Int.min
  //    tail.value = Int.min
  //    tail.next = nil
  //    head.next = tail
  //  }
  //
  //  var isEmpty:Bool{
  //    head.next == nil
  //  }
  //
  //  //inserts node in last
  //  mutating func append(node n:iNode){
  //    //if first node
  //    if self.isEmpty{
  //      head.next = n
  //      n.next = tail
  //    }else {
  //      //tmp points to node just before tail
  //      var tmp = head.next
  //      while tmp?.next != tail{ //Operator function '!=' requires that 'Node<Int>' conform to 'Equatable'
  //        tmp = tmp?.next
  //      }
  //    }
  //  }
  //}


/**
 Changing the Node to one without
 Cause: Operator function '!=' requires that 'Node<Int>' conform to 'Equatable'
 */
