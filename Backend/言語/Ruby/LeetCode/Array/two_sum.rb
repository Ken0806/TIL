def two_sum(nums, target)
  nums.each_with_index do |num, index|
    rest = target - num
    rest_index = nums.index(rest)
    return [index, rest_index] if rest_index && rest_index != index
  end
end

def two_sum_answer(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
    return dict[target - n], i if dict[target - n]

    dict[n] = i
  end
end
