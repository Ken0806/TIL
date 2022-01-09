# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  front = 0
  back = s.length - 1
  until front >= back
    s[front], s[back] = s[back], s[front]
    front += 1
    back -= 1
  end
end
