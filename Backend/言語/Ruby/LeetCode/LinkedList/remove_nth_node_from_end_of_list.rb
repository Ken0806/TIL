# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  num_of_node = 1
  node1 = head
  while node1
    node1 = node1.next
    num_of_node += 1 if node1
  end
  removed_node = head
  (num_of_node - n - 1).times do
    removed_node = removed_node.next
  end

  if num_of_node == 1
    removed_node.next = nil
    removed_node.val = nil
  elsif n == num_of_node
    head = head.next
  elsif n != num_of_node
    removed_node.next = removed_node.next.next
  end

  head
end

# - listのnode数(num_of_nodes)を取得する
# - 最後からn+1個目 == 先頭からnum_of_nodes-n+1個目 のnodeを取得する
# - 最後からn+1個目のnodeを更新する
#   - n==1の場合: node.next = nil
#   - n!=1の場合:
#     - n==num_of_nodesの場合: head = node.next
#     - n!=num_of_nodesの場合: node.next = node.next.next
