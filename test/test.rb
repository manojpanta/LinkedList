require "./lib/node"
require 'pry'
require 'rb-readline'
# node = Node.new("plop")
# node.data
# node.next_node

#
# require "./lib/linked_list"
# list = LinkedList.new
# binding.pry
# list.head
# nil
# list.append("doop")
# "doop"
# list
# list.head.next_node
# nil
# list.count
# 1
# list.to_string
# "doop"

##iteration 2
#
# require "./lib/linked_list"
# list = LinkedList.new
# list.head
# nil
# list.append("doop")
# binding.pry
# "doop"
# list
# # <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# list.head
# # <Node data="doop" next_node=nil #5678904567890>
# list.head.next_node
# nil
# list.append("deep")
# "deep"
# list.head.next_node
# # <Node data="deep" next_node=nil #5678904567890>
# list.count
# 2
# list.to_string
# "doop deep"


##iteration 3


# require "./lib/linked_list"
# list = LinkedList.new
# binding.pry
# list.append("plop")
# list.to_string
# list.append("suu")
# list.prepend("dop")
# "dop"
# list.to_string
# "dop plop suu"
# list.count
# 3
# list.insert(3, "woo")
# "woo"
# list.to_string
# "dop woo plop suu"
