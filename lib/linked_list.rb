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
      current = @head
      (count - 1).times do
        current = current.next_node
      end
      current.next_node = Node.new(node)
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
    string  = "#{current.data}"
    until  current.next_node == nil
      current = current.next_node
      string << (" " + current.data)
    end
    string
  end

  def prepend(data)
    return @head = Node.new(data) if @head.nil?
    old_head = @head
    @head = Node.new(data)
    @head.next_node = old_head
  end

  def insert(postion, data)
    count = 0
    current = @head
    until count == (postion-1) do
      current = current.next_node
      count += 1
    end
    node = Node.new(data)
    node.next_node = current.next_node
    current.next_node = node
  end
end
