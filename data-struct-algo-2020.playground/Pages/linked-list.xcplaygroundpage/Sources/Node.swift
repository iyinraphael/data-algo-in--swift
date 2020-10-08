import Foundation
// MARK: - NODE
public class Node<Value> {
    
    public var value: Value
    public var next: Node?
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else { return "\(value)"}
        
        return "\(value) -> \(String(describing: next)) "
    }

}



// MARK: - LINKEDLIST
public struct LinkedList<Value> {
    
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    /*
        - There are three ways to add values to a linked list, each having their own unique
        performance characteristics:
        - PUSH: Adds value at the front of the list
        - APPEND: Adds a value at the end of the list
        - INSERT(after:) Adds a value after a particular node of the lis
     */
    
    // PUSH
    public mutating func push(_ value: Value) {
       
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    // APPEND
    public mutating func append(_ value: Value) {
        
        /* 1
         if the list is empty, you’ll need to update both head
        and tail to the new node. Since append on an empty list is
        functionally identical to push, you simply invoke push to do the
        work for you.
         */
        guard !isEmpty else {
            push(value)
            return
        }
        
        /* 2
         In all other cases, you simply create a new node after the tail
         node. Force unwrapping is guaranteed to succeed since you push
         in the isEmpty case with the above guard statement.
         */
        tail!.next = Node(value: value)
        
        /*3
         Since this is tail-end insertion, your new node is also the tail of
         the list.
         */
        tail = tail!.next
    }
    
    // INSERT(after:)
    
    public func node(at index: Int) -> Node<Value>? {
        
        /*1
         You create a new reference to head and keep track of the current
         number of traversals.
         */
        var currentNode = head
        var currentIndex = 0
        
        /*2
         Using a while loop, you move the reference down the list until
         you’ve reached the desired index. Empty lists or out-of-bounds
         indexes will result in a nil return value.
         */
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }
    
    @discardableResult public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        
        /*1
         In the case where this method is called with the tail node, you’ll
         call the functionally equivalent append method. This will take
         care of updating tail.
         */
        guard tail !== node else {
            append(value)
            return tail!
        }
        
        
        node.next = Node(value: value, next: node.next)
        return node.next!
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else { return "Empty list"}
        
        return String(describing: head)
    }
}
