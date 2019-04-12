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
    return nil if @head.nil?
    count = 1
    current_node = @head
    until current_node.next_node == nil
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_string(current=@head, length=count)
    return nil if current.nil?

    string  = "#{current.data}"

    (length -1).times do
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

  def find(position, length)
    current = @head
    position.times do
      current = current.next_node
    end
    to_string(current, length)
  end

  def includes?(data, current = @head)
    begin
      return true if current.data == data
      current = current.next_node
      includes?(data, current)
    rescue NoMethodError
      false
    end
  end
end
