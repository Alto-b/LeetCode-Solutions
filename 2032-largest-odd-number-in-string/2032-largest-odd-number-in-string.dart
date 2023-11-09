class Solution {
  String largestOddNumber(String nums) {
    for (int i = nums.length - 1; i >= 0; i--) {
      int number = int.parse(nums[i]);
      if (number % 2 != 0) {
        return nums.substring(0, i + 1);
      }
    }
    return "";
  }
}