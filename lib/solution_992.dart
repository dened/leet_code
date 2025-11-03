/// 992. Subarrays with K Different Integers
///
/// Hard
/// Topics
/// premium lock icon
/// Companies
/// Hint
/// Given an integer array nums and an integer k, return the number of good subarrays of nums.
///
/// A good array is an array where the number of different integers in that array is exactly k.
///
/// For example, [1,2,3,1,2] has 3 different integers: 1, 2, and 3.
/// A subarray is a contiguous part of an array.
///
///
///
/// Example 1:
///
/// Input: nums = [1,2,1,2,3], k = 2
/// Output: 7
/// Explanation: Subarrays formed with exactly 2 different integers: [1,2], [2,1], [1,2], [2,3], [1,2,1], [2,1,2], [1,2,1,2]
/// Example 2:
///
/// Input: nums = [1,2,1,3,4], k = 3
/// Output: 3
/// Explanation: Subarrays formed with exactly 3 different integers: [1,2,1,3], [2,1,3], [1,3,4].
///
///
/// Constraints:
///
/// 1 <= nums.length <= 2 * 104
/// 1 <= nums[i], k <= nums.length
///
class Solution {
  int subarraysWithKDistinct(List<int> nums, int k) {
    return _atMostKDistinct(nums, k) - _atMostKDistinct(nums, k - 1);
  }

  int _atMostKDistinct(List<int> nums, int k) {
    if (k < 0) return 0;
    int left = 0;
    int count = 0;
    final windowCounts = <int, int>{};
    for (int right = 0; right < nums.length; right++) {
      windowCounts[nums[right]] = (windowCounts[nums[right]] ?? 0) + 1;
      while (windowCounts.length > k) {
        final leftNum = nums[left];
        windowCounts[leftNum] = windowCounts[leftNum]! - 1;
        if (windowCounts[leftNum] == 0) {
          windowCounts.remove(leftNum);
        }
        left++;
      }
      count += right - left + 1;
    }
    return count;
  }
}
