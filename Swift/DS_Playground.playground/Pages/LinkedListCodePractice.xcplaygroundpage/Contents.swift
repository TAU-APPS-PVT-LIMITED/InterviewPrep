//: [Previous](@previous)


class Node {
    var value: Int
    var next: Node?

    init(value: Int) {
        self.value = value
    }
}

class LinkedList {

    var head: Node?

    init(head: Node?) {
        self.head = head
    }

    func append(_ node: Node) {

        guard head != nil else {
            head = node
            return
        }

        var current = head
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
    }

    // Get a node from a particular position.
    // Assume the first position is "1".
    // Return "nil" if position is not in the list.
    func getNode(atPosition position: Int) -> Node? {
//        var currentPos = 1
//        var current = head
//        print(current?.value)
//
//        while currentPos != position {
//            return current
//        } else if current?.next != nil {
//            current = current?.next
//            currentPos += 1
//        }
//        guard current?.next != nil else {return current}
//
//        while current?.next != nil {
//            if currentPos == position {
//                print(current?.value)
//                return current
//            } else {
//                current = current?.next
//                print(current?.value)
//                currentPos += 1
//            }
//        }
        return nil
    }

    // Insert a new node at the given position.
    // Assume the first position is "1".
    // Inserting at position 3 means between
    // the 2nd and 3rd nodes.
    func insertNode(_ node: Node, at position: Int) {

    }

    // Delete the first node with a given value.
    func deleteNode(withValue value: Int) {

    }
}

// Test cases

// Set up some Nodes
let n1 = Node(value: 1)
let n2 = Node(value: 2)
let n3 = Node(value: 3)
let n4 = Node(value: 4)

// Start setting up a LinkedList
let ll = LinkedList(head: n1)
ll.append(n2)
ll.append(n3)

// Test getNode(atPosition:)
print(ll.head!.next!.next!.value) // Should print 3
print(ll.getNode(atPosition: 3)!.value) // Should also print 3
/*
// Test insert
ll.insertNode(n4, at: 3)
print(ll.getNode(atPosition: 3)!.value) // Should print 4 now

// Test delete(withValue:)
ll.deleteNode(withValue: 1)
print(ll.getNode(atPosition: 1)!.value) // Should print 2 now
print(ll.getNode(atPosition: 2)!.value) // Should print 4 now
print(ll.getNode(atPosition: 3)!.value) // Should print 3
*/
//: [Next](@next)
