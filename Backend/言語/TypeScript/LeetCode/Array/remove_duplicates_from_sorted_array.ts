function removeDuplicates(nums: number[]): number {
  let i = 0,
    j = 1,
    result = 0;
  while (i < nums.length) {
    if (nums[i] === nums[j]) {
      j++;
    } else {
      nums[result] = nums[i];
      i = j;
      j++;
      result++;
    }
  }
  return result;
}
