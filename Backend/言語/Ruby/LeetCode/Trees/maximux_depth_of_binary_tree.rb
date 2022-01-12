# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  depth = 0
  children = [root]
  while children.any?
    depth += 1
    clone_of_children = children.clone
    children = []
    clone_of_children.each do |child|
      children.push child&.left, child&.right
    end
    children.compact!
  end
  depth
end

def max_depth_answer(root)
  root ? 1 + [max_depth(root.left), max_depth(root.right)].max : 0
end
