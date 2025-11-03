/// 424. Longest Repeating Character Replacement
/// Medium
/// Topics
/// premium lock icon
/// Companies
/// You are given a string s and an integer k. You can choose any character
/// of the string and change it to any other uppercase English character.
/// You can perform this operation at most k times.
///
/// Return the length of the longest substring containing the same letter you can get after performing the above operations.
///
///
///
/// Example 1:
///
/// Input: s = "ABAB", k = 2
/// Output: 4
/// Explanation: Replace the two 'A's with two 'B's or vice versa.
/// Example 2:
///
/// Input: s = "AABABBA", k = 1
/// Output: 4
/// Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
/// The substring "BBBB" has the longest repeating letters, which is 4.
/// There may exists other ways to achieve this answer too.
///
///
/// Constraints:
///
/// 1 <= s.length <= 105
/// s consists of only uppercase English letters.
/// 0 <= k <= s.length

import "dart:math";

class Solution {
  int characterReplacement(String s, int k) {
    int left = 0;
    int longest = 0;
    int maxFreq = 0;
    final counter = <String, int>{};

    for (int right = 0; right < s.length; right++) {
      counter[s[right]] = (counter[s[right]] ?? 0) + 1;
      maxFreq = max(maxFreq, counter[s[right]]!);
      while ((right - left + 1) - maxFreq > k) {
        counter[s[left]] = counter[s[left]]! - 1;
        left++;
      }
      longest = max(longest, right - left + 1);
    }

    return longest;
  }
}
