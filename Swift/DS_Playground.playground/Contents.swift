import Cocoa

protocol LinkListNode {
    var next: LinkListNode? {get set}
    var value: String {get set}
}

struct Node:LinkListNode {
    var next: LinkListNode?
    var value: String

    mutating func insert(next:inout Node) {
        next.next = self.next
        self.next = next
    }

}

var last = Node(next: nil, value: "lastNode")
var start = Node(next: last, value: "start")

print("start next node value is \(start.next?.value ?? "null value")")

var node = Node(next: nil, value: "next node")
start.insert(next: &node)

print("start next node value is \(start.next?.value ?? "null value")")
print("start next next node value is \(start.next?.next?.value ?? "null value")")

