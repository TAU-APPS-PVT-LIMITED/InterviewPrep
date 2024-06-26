//
//  main.swift
//  KodecooDSA
//
//  Created by Gaurav Gupta on 25/06/2024.
//

import Foundation

//linked list init
var ll = IntLL() //head and tail are nil
ll.push(value: 4)
print("Popping from ll: \(ll.pop()!)")
ll.describe()
ll.push(value: 5)
ll.push(value: 6)
ll.push(value: 7)
ll.push(value: 8)
ll.describe()
print("Popping from ll: \(ll.pop()!)")
ll.describe()
ll.push(value: 9)
ll.push(value: 10)
ll.push(value: 11)
ll.push(value: 12)
ll.describe()
