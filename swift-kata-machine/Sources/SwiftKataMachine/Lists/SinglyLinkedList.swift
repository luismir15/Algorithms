enum LinkedListError: Error {
    case indexOutOfBounds
}

class SinglyLinkedList<T> {
    public var length: Int
    private var head: Node<T>?
    private var tail: Node<T>?

    init() {
        self.head = nil
        self.tail = nil
        self.length = 0
    }

    func prepend(item: T) {
        let newNode = Node(value: item, next: self.head)
        self.head = newNode

        if self.tail == nil {
            self.tail = newNode
        }

        self.length += 1
    }

    func insertAt(item: T, idx: Int) throws {
        if idx > self.length {
            throw LinkedListError.indexOutOfBounds
        }

        if idx == 0 {
            self.prepend(item: item)
            return
        }

        let newNode = Node(value: item, next: nil)

        var counter = 0
        var currentNode = self.head
        while counter < idx - 1 {
            if currentNode != nil {
                currentNode = currentNode?.next
            }
            counter += 1
        }

        if currentNode != nil {
            newNode.next = currentNode?.next
            currentNode?.next = newNode
        }

        self.length += 1
    }

    func append(item: T) {
        let newNode = Node(value: item, next: nil)

        if self.head == nil {
            self.head = newNode
            self.tail = newNode
        } else {
            tail?.next = newNode
            tail = newNode
        }

        length += 1
    }

    func get(idx: Int) -> T? {
        if idx < 0 || idx >= self.length {
            return nil
        }

        var currentNode = self.head
        var counter = 0

        while counter < idx {
            currentNode = currentNode?.next
            counter += 1
        }

        return currentNode?.value
    }

    func removeAt(idx: Int) -> T? {
        if idx < 0 || idx >= self.length {
            return nil
        }

        var currentNode = self.head
        if idx == 0 {
            self.head = self.head?.next
            self.length -= 1

            return currentNode?.value
        }

        var counter = 0
        while counter > idx - 1 {
            currentNode = currentNode?.next
            counter += 1
        }

        if currentNode != nil && currentNode?.next != nil {
            let nodeToRemove = currentNode?.next
            currentNode?.next = currentNode?.next?.next
            self.length -= 1
            return nodeToRemove?.value
        }

        return nil
    }
}
