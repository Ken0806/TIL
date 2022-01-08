def two_sum(nums, target)
  nums.each_with_index do |num, i|
    dif = target - num
    j = nums.find_index(dif)
    return [i, j] if j && j != i
  end
end

def two_sum_answer(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
    return dict[target - n], i if dict[target - n]

    dict[n] = i
  end
end
