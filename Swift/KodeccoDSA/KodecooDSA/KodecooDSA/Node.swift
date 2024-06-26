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
    rhs === lhs
  }
}

class IntNode{
  var value: Int = .zero
  var next: IntNode!
  init(value: Int, next: IntNode! = nil) {
    self.value = value
    self.next = next
  }
}

extension IntNode: Equatable {
  static func == (lhs: IntNode, rhs: IntNode) -> Bool {
    rhs === lhs
  }
}
