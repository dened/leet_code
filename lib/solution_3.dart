import 'dart:math';

/// #Medium
/// https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
/// 

class Solution {

  int lengthOfLongestSubstring(String s) {
    final map = <String, int>{};
    int left = 0;
    int longest = 0;
    for (int right = 0; right < s.length; right++) {
      if (map.containsKey(s[right]) && map[s[right]]! >= left) {

        left = map[s[right]]! + 1;
      } 
      map[s[right]] = right;
      longest = max(longest, right - left + 1);
    }

    return longest;
  }
}
