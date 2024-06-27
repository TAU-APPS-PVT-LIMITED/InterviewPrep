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
ll.describe()
print("Popping from ll: \(ll.pop()!)")
ll.describe()
ll.push(value: 5)
ll.describe()
ll.push(value: 6)
ll.describe()
ll.push(value: 7)
ll.describe()
ll.push(value: 8)
ll.describe()
print("Popping from ll: \(ll.pop()!)")
ll.describe()
ll.push(value: 9)
ll.describe()
ll.push(value: 10)
ll.describe()
ll.push(value: 11)
ll.describe()
ll.push(value: 12)
ll.describe()
ll.append(value: 13)
ll.describe()
ll.append(value: 14)
ll.describe()
ll.insert(value: 22, at: 1)
ll.describe()
ll.insert(value: 23, at: 2)
ll.describe()
print("Popping from ll: \(ll.pop()!)")
ll.describe()
print("Popping from ll: \(ll.pop()!)")
ll.describe()
print("Popping from ll: \(ll.pop()!)")
ll.describe()
