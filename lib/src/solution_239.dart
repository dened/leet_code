/// 239. Sliding Window Maximum
/// Attempted
/// Hard
/// Topics
/// premium lock icon
/// Companies
/// Hint
/// You are given an array of integers nums, there is a sliding window of size k
/// which is moving from the very left of the array to the very right.
/// You can only see the k numbers in the window. Each time the sliding window moves right by one position.
///
/// Return the max sliding window.
///
///
///
/// Example 1:
///
/// Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
/// Output: [3,3,5,5,6,7]
/// Explanation:
/// Window position                Max
/// ---------------               -----
/// [1  3  -1] -3  5  3  6  7       3
///  1 [3  -1  -3] 5  3  6  7       3
///  1  3 [-1  -3  5] 3  6  7       5
///  1  3  -1 [-3  5  3] 6  7       5
///  1  3  -1  -3 [5  3  6] 7       6
///  1  3  -1  -3  5 [3  6  7]      7
/// Example 2:
///
/// Input: nums = [1], k = 1
/// Output: [1]
///
///
/// Constraints:
///
/// 1 <= nums.length <= 105
/// -104 <= nums[i] <= 104
/// 1 <= k <= nums.length
///

class Solution {
  List<int> maxSlidingWindow(List<int> nums, int k) {
    final result = <int>[];
    final queue = <int>[];
    for (int right = 0; right < nums.length; right++) {
      if(queue.isNotEmpty && queue.first <= right - k) queue.removeAt(0);

      while(queue.isNotEmpty && nums[queue.last] < nums[right]) {
        queue.removeLast();
      }

      queue.add(right);

      if(right >= k -1) result.add(nums[queue.first]);
   
    }

    return result;
  }
}
