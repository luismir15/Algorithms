class Queue<T> {
    public var lenght: Int
    private var head: Node<T>?
    private var tail: Node<T>?

    init() {
        lenght = 0
        head = nil
        tail = nil
    }

    func enqueue(item: T) {
        let node = Node(value: item)

        self.lenght += 1
        if (self.tail == nil) {
            self.tail = node
            self.head = node
        }

        self.tail?.next = node;
        self.tail? = node;
    }

    func dequeue() -> T? {
        return nil
    }

    func peek() -> T? {
        return self.head?.value
    }
}
