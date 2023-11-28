require_relative 'node'

class LinkedList
    
    attr_accessor :head
    def initialize
        self.head = nil
    end

    def tail(current_node = self.head)
        if current_node.next_node == nil
            return current_node
        else
            tail(current_node.next_node)
        end
    end

    def append(value)
        if self.head == nil
            self.head = Node.new(value)
        else
           last_node = self.tail
           last_node.next_node = Node.new(value)
        end
    end

    def prepend(value)
        temp = self.head
        self.head = Node.new(value)
        self.head.next_node = temp
    end

    def size(current_node = self.head, count = 0)
        if current_node == nil
            return count
        else
            size(current_node.next_node, count + 1)
        end
    end

    def at(index, current_node = self.head, count = 0)
        if index == count
            return current_node
        else
            at(index, current_node.next_node, count = count + 1 )
        end
    end

    def tail(current_node = self.head)
        if current_node.next_node == nil
            return current_node
        else
            tail(current_node.next_node)
        end 
    end

    def pop(current_node = self.head )
        if current_node.next_node.next_node == nil
            current_node.next_node = nil
        else
            pop(current_node.next_node)
        end
    end

    def contains?(value, current_node = self.head)
        if current_node.value == value
            return true
        elsif current_node.next_node == nil
            return false
        else
            contains?(value, current_node.next_node)
        end
    end

    def find(value, current_node = self.head, index = 0)
        if current_node.value == value
            return index
        else
            find(value, current_node.next_node, index + 1)
        end
    end

    def to_s(current_node = self.head, s = '')
        if current_node == nil
            return s + ' nil'
        else
            to_s(current_node.next_node, s = s + "( #{current_node.value} ) -> ")
        end
    end
end

