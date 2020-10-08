//: [Previous](@previous)

import Foundation

/*  - A linked list is acollection of values arranged in alinear undirectional sequence
    - It has condtant time insertion and removal from the fornt of the list
    - A linked lis is a chain of NODES
    - Nodes hold a value
    - Nodes hold a refrence to the next node. A nil value represnets the end of the list
 */


// Linking node
 func example(of linkedList:String = "---creating and linking nodes---") {
    print(linkedList)
    
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
}

example()


// Push a Linkedlist

var list = LinkedList<Int>()

func example2(of push:String = "--push--"){
    
    print(push)
    
    list.push(3)
    list.push(2)
    list.push(1)
    
    print(list)
}

example2()

// Append a Linkedlist
func example3(of append: String = "--append--") {
    
    print(append)
    
    list.append(4)
    list.append(5)
    list.append(6)
    
    print(list)
    
}

example3()

// Inserting after in Linkedlist
func example4(of insert: String = "---inserting at a particular index---") {
    
    print("Before inserting: \(list)")
    var middleNode = list.node(at: 2)!
    
    for _ in 1...4 {
        middleNode = list.insert(-1, after: middleNode)
    }
    print(insert + " " + "\(list)")
}

example4()


//: [Next](@next)

