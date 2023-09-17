/* Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice */

List<int> twoSum(List<int> nums, int target) {
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if ((nums[i] + nums[j]) == target) {
        result = [i, j];
      }
    }
  }
  return result;
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  List<int> sum = twoSum(nums, target);
  print(sum);
}
