require_relative 'node'
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(node)
    if @head.nil?
      @head = Node.new(node)
    else
      @head.next_node = Node.new(node)
    end
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
      string << (" " + current.data)
    end
    string
  end
end
