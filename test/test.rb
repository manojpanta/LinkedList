require "./lib/node"
require 'pry'
require 'rb-readline'
# node = Node.new("plop")
# node.data
# node.next_node


require "./lib/linked_list"
list = LinkedList.new
binding.pry
list.head
nil
list.append("doop")
"doop"
list
list.head.next_node
nil
list.count
1
list.to_string
"doop"
