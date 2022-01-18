function removeDuplicates(nums: number[]): number {
  let i = 0;
  let j = 1;
  let k = 0;
  while (i < nums.length) {
    if (nums[i] === nums[j]) {
      j++;
    } else {
      nums[k] = nums[i];
      i = j;
      k++;
    }
  }
  for (let l = 0; l < nums.length - k; l++) {
    nums.pop;
  }
  return k + 1;
}
