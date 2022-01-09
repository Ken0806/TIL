# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
  node.val = node.next.val
  node.next = node.next.next
end

# 単方向線形リストがどのようなものかは、こちらを参照するとわかりやすい(https://qiita.com/littlem/items/3028ee788ff77ebaaa5e#%E5%8D%98%E6%96%B9%E5%90%91%E3%81%A7%E7%B7%9A%E5%BD%A2%E3%81%AA%E3%83%AA%E3%82%B9%E3%83%88)。
