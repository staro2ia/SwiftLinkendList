




/// Linked list
///
/// Impliment of linked list in Swift.
public struct LinkedList<T: Comparable > {
    
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

  /// Append value to the end of list
  ///
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
  public func nodeAt(index: Int) -> Node<T>? {
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

// MARK: - extension Sequence
extension LinkedList: Sequence {
    public typealias Iterator = LinkedListIterator<T>

    public func makeIterator() -> LinkedList.Iterator {
        return LinkedListIterator(self)
    }
}
