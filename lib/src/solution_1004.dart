/// 1004. Max Consecutive Ones III
/// Medium
/// Topics
/// premium lock icon
/// Companies
/// Hint
/// Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.
///
///
///
/// Example 1:
///
/// Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2
/// Output: 6
/// Explanation: [1,1,1,0,0,1,1,1,1,1,1]
/// Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
/// Example 2:
///
/// Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3
/// Output: 10
/// Explanation: [0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1]
/// Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
///
///
/// Constraints:
///
/// 1 <= nums.length <= 105
/// nums[i] is either 0 or 1.
/// 0 <= k <= nums.length
///
class Solution {
  int longestOnes(List<int> nums, int k) {
    int left = 0;
    int longest = 0;
    final counter = <int, int>{};

    for (int right = 0; right < nums.length; right++) {
      counter[nums[right]] = (counter[nums[right]] ?? 0) + 1;
      while ((counter[0] ?? 0) > k) {
        int leftNum = nums[left];
        counter[leftNum] = counter[leftNum]! - 1;
        left++;
      }
      final newLen = right - left + 1;
      longest = newLen > longest ? newLen : longest;
    }

    return longest;
  }
}
