import 'dart:math';

/// #Medium
/// 
/// #slide_window
/// https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
///

class Solution {
  int lengthOfLongestSubstring(String s) {
    int left = 0;
    int longest = 0;
    var seen = <int, int>{};

    final codeUnits = s.codeUnits;

    for (int right = 0; right < codeUnits.length; right++) {
      final code = codeUnits[right];

      if (seen.containsKey(code) && seen[code]! >= left) {
        left = seen[code]! + 1;
      }

      seen[code] = right;
      longest = max(longest, right - left + 1);
    }

    return longest;
  }
}
