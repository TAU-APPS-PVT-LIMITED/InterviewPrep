//
//  LinkedList.swift
//  kodeccodsa
//
//  Created by Gaurav Gupta on 25/06/2024.
//

import Foundation

struct LL{
  var head:iNode!
  var tail:iNode!

  init(){
    head.value = Int.min
    tail.value = Int.min
    tail.next = nil
    head.next = tail
  }

  var isEmpty:Bool{
    head.next == nil
  }

  //inserts node in last
  mutating func append(node n:iNode){
    //if first node
    if self.isEmpty{
      head.next = n
      n.next = tail
    }else {
      //tmp points to node just before tail
      var tmp = head.next
      while tmp?.next != tail{
        tmp = tmp?.next
      }
    }
  }
}
