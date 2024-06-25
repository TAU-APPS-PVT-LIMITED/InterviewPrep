//
//  Node.swift
//  kodeccodsa
//
//  Created by Gaurav Gupta on 25/06/2024.
//

import Foundation

class Node<T:Comparable>{
  var value:T!
  var next: Node!

  init(value: T!, next: Node!) {
    self.value = value
    self.next = next
  }
}


class iNode:Node<Int>{
  override init(value: Int!, next: Node<Int>!) {
    super.init(value: value, next: next)
    self.value = value
    self.next = next
  }
}

extension iNode: Equatable {
  static func == (lhs: iNode, rhs: iNode) -> Bool {
    lhs.value == rhs.value
  }
}
