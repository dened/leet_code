/// 1234. Replace the Substring for Balanced String
/// Medium
/// Topics
/// premium lock icon
/// Companies
/// Hint
/// You are given a string s of length n containing only
/// four kinds of characters: 'Q', 'W', 'E', and 'R'.
///
/// A string is said to be balanced if each of its characters
/// appears n / 4 times where n is the length of the string.
///
/// Return the minimum length of the substring that can be replaced
/// with any other string of the same length to make s balanced.
/// If s is already balanced, return 0.
///
///
///
/// Example 1:
///
/// Input: s = "QWER"
/// Output: 0
/// Explanation: s is already balanced.
/// Example 2:
///
/// Input: s = "QQWE"
/// Output: 1
/// Explanation: We need to replace a 'Q' to 'R', so that "RQWE" (or "QRWE") is balanced.
/// Example 3:
///
/// Input: s = "QQQW"
/// Output: 2
/// Explanation: We can replace the first "QQ" to "ER".
///
///
/// Constraints:
///
/// n == s.length
/// 4 <= n <= 105
/// n is a multiple of 4.
/// s contains only 'Q', 'W', 'E', and 'R'.
///
class Solution {
  int balancedString(String s) {
    final n = s.length ~/ 4;
    final counter = <String, int>{};
    for (int i = 0; i < s.length; i++) {
      counter[s[i]] = (counter[s[i]] ?? 0) + 1;
    }

    counter.updateAll((_, value) => value > n ? value -= n : 0);
    counter.removeWhere((_, value) => value == 0);

    if(counter.isEmpty) return 0;

    int left = 0;

    int resLen = -1;

    final windowCount = <String, int>{};
    int have = 0;
    int total = counter.length;

    for (int right = 0; right < s.length; right++) {
      final char = s[right];
      windowCount[char] = (windowCount[char] ?? 0) + 1;
      if (counter.containsKey(char) && counter[char] == windowCount[char]) {
        have++;
      }

      while (have == total) {
        if (resLen == -1 || (right - left + 1) < resLen) {
          resLen = right - left + 1;
        }

        final leftChar = s[left];

        windowCount[leftChar] = windowCount[leftChar]! - 1;

        if(counter.containsKey(leftChar) && windowCount[leftChar]! < counter[leftChar]!) {
          have--;
        }

        left++;
      }
    }

    return resLen;
  }
}
