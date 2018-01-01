


/// Iterator of linked list
public struct LinkedListIterator<T: Comparable>: IteratorProtocol {
    /// Type of element
    public typealias Element = T

    /// The current node in the iteration
    private var currentNode: Node<T>?

    init(_ list: LinkedList<T>) {
        currentNode = list.first
    }

    /// Get the next value
    /// Go to tje next node and retur it's value
    /// - Returns: value of the next node
    public mutating func next() -> T? {
        let node = currentNode
        currentNode = currentNode?.next

        return node?.value
    }
}

