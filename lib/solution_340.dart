import 'dart:math';

/// 340. Longest Substring with At Most K Distinct Characters
///
/// Medium
///
/// Problem Description
/// You are given a string s and an integer k. Your task is to find
/// the length of the longest substring within s that contains at most k distinct characters.
///
/// A substring is a contiguous sequence of characters within the string.
/// For example, if s = "eceba" and k = 2, you need to find
/// the longest substring that has no more than 2 different characters.
///
/// Let's break down what this means:
///
/// You need to examine all possible substrings of the input string s
/// Count the number of distinct/unique characters in each substring
/// Keep only those substrings where the distinct
/// character count is at most k (less than or equal to k)
/// Return the length of the longest valid substring
/// For instance:
///
/// If s = "eceba" and k = 2, the substring "ece" has 2 distinct
/// characters ('e' and 'c'), making it valid with length 3
/// If s = "aa" and k = 1, the entire string has only 1 distinct
/// character ('a'), so the answer would be 2
/// The solution uses a sliding window technique with a hash table
/// to efficiently track the distinct characters in the current window.
/// The window expands by moving the right boundary and contracts
/// from the left when the distinct character count exceeds k.
/// The final answer is calculated as the length of the string
/// minus the final position of the left boundary, which gives
/// us the maximum valid window size encountered.

class Solution {
  int lengthOfLongestSubstringKDistinct(String s, int k) {
    if (k == 0) {
      return 0;
    }
    if (s.length <= k) {
      return s.length;
    }

    int left = 0;
    int longest = 0;
    final counter = <String, int>{};

    for (int right = 0; right < s.length; right++) {
      final char = s[right];
      counter.update(char, (value) => ++value, ifAbsent: () => 1);
      while (counter.length > k) {
        final leftChar = s[left];
        counter.update(leftChar, (value) => --value);
        if (counter[leftChar] == 0) {
          counter.remove(leftChar);
        }
        left++;
      }

      longest = max(longest, right - left + 1);
    }

    return longest;
  }
}
