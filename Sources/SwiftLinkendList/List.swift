/// Author: Pavel S. Timosh




/// Linked list
///
/// Impliment of linked list in Swift.
public struct LinkedList<T: Comparable > {
    // MARK: Fields and properties
    
    /// Head of list
    fileprivate var head: Node<T>?
    /// Tail of list
    /// Used for speed acsess to the end of list.
    private var tail: Node<T>?
    
    /// For check is list empty?
    public var isEmpty: Bool {
        return head == nil
    }
    
    /// First node of list
    public var first: Node<T>? {
        return head
    }
    
    /// Lasst node of list
    public var last: Node<T>? {
        return tail
    }
    
    /// Count of the list's elements
    public var size: Int {
        var i = 0
        var node = head
        
        while node != nil {
            i += 1
            node = node!.next
        }
        
        return i
    }
    
    // MARK: Methods
    /// Append value to the end of list
    ///
    /// Complexity: O(1)
    /// - Parameter value: append this value to the end of list
    public mutating func append(value: T) {
        let newNode = Node(value: value)
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    /// Get a node with index
    ///
    /// - Parameter index: index of recuremen node
    /// - Returns: The node with index, if founded it
    public func node(at index: Int) -> Node<T>? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
    
    
    /// Remove all nodes from list
    public mutating func removeAll() {
        head = nil
        tail = nil
    }
    
    /// Remove the node from list
    ///
    /// - Parameter node: the node, what be removed
    /// - Returns: value of the removed node
    public mutating func remove(node: Node<T>) -> T {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        
        if next == nil {
            tail = prev
        }
        
        node.previous = nil
        node.next = nil
        
        return node.value
    }
    
    /// Remove a node from list at index
    ///
    /// - Parameter index: theindex of removable node
    /// - Returns: optional value of the removed node, if find it
    public func remove(at index: Int) -> T? {
        //TODO: iplement this function
        
        return nil
    }
}

// MARK: - extension CustomStringConvertible
extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}

// MARK: - extension Collection
extension LinkedList: Collection {
    
    public typealias Element = T
    public typealias SubSequence = LinkedList<T>
    public typealias Index = LinkedListIndex<T>
    public typealias Iterator = LinkedListIterator<T>
    
    public var count: Int {
        guard var node = head else {
            return 0
        }
        
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    public var startIndex: Index {
        return LinkedListIndex<T>(node: head, i: 0)
    }
    
    public var endIndex: Index {
        return LinkedListIndex<T>(node: tail, i: size)
    }
    
    public subscript(position: LinkedListIndex<T>) -> T {
        return node(at: position.i)!.value
    }
    
    public subscript(i: Int) -> T {
        return node(at: i)!.value
    }

    public func index(after idx: LinkedListIndex<T>) -> LinkedListIndex<T> {
        return Index(node: idx.node?.next, i: idx.i + 1)
    }
    
    

    
    public func makeIterator() -> LinkedList.Iterator {
        return LinkedListIterator(self)
    }
    
    
}




// TODO: - Implement index model

// MARK: - extension ExpressibleByArrayLiteral

// TODO: Implement this

// MARK: - extension Comparable

// TODO: Implement this
