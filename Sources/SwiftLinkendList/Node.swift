


/// Узел связного списка
/// Node of linked list
public class Node<T: Comparable> {
  /// Node's value
  var value: T
    
  /// Next node pointer
  var next: Node<T>?
    
  /// Previous node pointer
  weak var previous: Node<T>?

  init(value: T) {
    self.value = value
  }
}


// MARK: - extension CustomStringConvertible
extension Node: CustomStringConvertible {
    /// Convert node to the string
    public var description: String {
        get {
            return "Node(\(value))"
        }
    }
}
