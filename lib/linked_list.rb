require_relative 'node'
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(node)
    @head = Node.new(node)
  end

  def count
    count = 1
    current_node = @head
    until current_node.next_node == nil
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_string
    current = @head
    string  = current.data
    until  current.next_node == nil
      current = current.next_node
      string << current.data
    end
    string
  end
end
