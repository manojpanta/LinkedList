require_relative 'linked_list'
class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(string)
    string.split.each do |s|
      @list.append(s)
    end
    @list.to_string
  end

  def count
    @list.count
  end




end
