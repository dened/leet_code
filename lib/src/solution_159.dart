import 'dart:math';

///
/// 159. Longest Substring with At Most Two Distinct Characters
///
/// Problem Description
/// You are given a string s. Your task is to find the length of
/// the longest substring that contains at most two distinct characters.
///
/// A substring is a contiguous sequence of characters within the string. For example,
/// in the string "eceba", some substrings include "e", "ec", "ece", "eceb", and "eceba".
///
/// The constraint is that the substring can have at most 2 different characters.
/// This means the substring can contain:
///
/// Only 1 distinct character (like "aaa" or "bbb")
/// Exactly 2 distinct characters (like "aabbb" or "ececec")
///
/// For example:
///
/// If s = "eceba", the longest valid substring is "ece" which has length 3 (contains only characters 'e' and 'c')
/// If s = "ccaabbb", the longest valid substring is "aabbb" which has length 5 (contains only characters 'a' and 'b')
/// The solution uses a sliding window approach with two pointers. It maintains a counter
/// to track the frequency of characters in the current window. When the window contains
/// more than 2 distinct characters, it shrinks from the left by moving the left pointer j
/// forward and decreasing character counts. The maximum window size encountered during this process is the answer.
///
class Solution {
  int lengthOfLongestSubstringTwoDistinct(String s) {
    int left = 0;
    int longest = 0;
    final seen = <String, int>{};

    for (int right = 0; right < s.length; right++) {
      final char = s[right];
      seen[char] = right;
      if (seen.length > 2) {
        final minIndex = seen.values.reduce(min);
        seen.removeWhere((key, value) => value == minIndex);
        left = minIndex + 1;
      }

      longest = max(longest, right - left + 1);
    }

    return longest;
  }
}
