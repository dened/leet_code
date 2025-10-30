/// 76. Minimum Window Substring
/// Hard
/// Topics
/// premium lock icon
/// Companies
/// Hint
/// Given two strings s and t of lengths m and n respectively, return the minimum
/// window substring of s such that every character in t (including duplicates)
/// is included in the window. If there is no such substring, return the empty string "".
///
/// The testcases will be generated such that the answer is unique.
///
///
///
/// Example 1:
///
/// Input: s = "ADOBECODEBANC", t = "ABC"
/// Output: "BANC"
/// Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.
/// Example 2:
///
/// Input: s = "a", t = "a"
/// Output: "a"
/// Explanation: The entire string s is the minimum window.
/// Example 3:
///
/// Input: s = "a", t = "aa"
/// Output: ""
/// Explanation: Both 'a's from t must be included in the window.
/// Since the largest window of s only has one 'a', return empty string.
///
///
/// Constraints:
///
/// m == s.length
/// n == t.length
/// 1 <= m, n <= 105
/// s and t consist of uppercase and lowercase English letters.
///
///
/// Follow up: Could you find an algorithm that runs in O(m + n) time?

class Solution {
  String minWindow(String s, String t) {
    if (t.isEmpty || s.length < t.length) {
      return "";
    }

    final tCounts = <String, int>{};
    for (int i = 0; i < t.length; i++) {
      tCounts.update(t[i], (value) => value + 1, ifAbsent: () => 1);
    }

    final windowCounts = <String, int>{};
    int have = 0;
    final int tTotal = tCounts.length;
    
    int left = 0;
    int resLeft = -1;
    int resLen = -1;

    for (int right = 0; right < s.length; right++) {
      final char = s[right];
      windowCounts.update(char, (value) => value + 1, ifAbsent: () => 1);

      if (tCounts.containsKey(char) && windowCounts[char] == tCounts[char]) {
        have++;
      }

      while (have == tTotal) {
        if (resLen == -1 || (right - left + 1) < resLen) {
          resLen = right - left + 1;
          resLeft = left;
        }

        final leftChar = s[left];
        windowCounts.update(leftChar, (value) => value - 1);

        if (tCounts.containsKey(leftChar) &&
            windowCounts[leftChar]! < tCounts[leftChar]!) {
          have--;
        }
        left++;
      }
    }

    if (resLen == -1) {
      return "";
    }

    return s.substring(resLeft, resLeft + resLen);
  }
}
