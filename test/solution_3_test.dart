import 'package:leet_code/src/solution_3.dart';
import 'package:test/test.dart';

void main() {
  group('Longest Substring Without Repeating Characters', () {
    final solution = Solution();

    test('Example 1: s = "abcabcbb"', () {
      expect(solution.lengthOfLongestSubstring("abcabcbb"), 3);
    });

    test('Example 2: s = "bbbbb"', () {
      expect(solution.lengthOfLongestSubstring("bbbbb"), 1);
    });

    test('Example 3: s = "pwwkew"', () {
      expect(solution.lengthOfLongestSubstring("pwwkew"), 3);
    });

    test('Empty string', () {
      expect(solution.lengthOfLongestSubstring(""), 0);
    });

    test('String with one character', () {
      expect(solution.lengthOfLongestSubstring("a"), 1);
    });

    test('String with all unique characters', () {
      expect(solution.lengthOfLongestSubstring("abcdef"), 6);
    });

    test('String with repeating character in the middle', () {
      expect(solution.lengthOfLongestSubstring("dvdf"), 3);
    });

    test('Complex string with repeating characters', () {
      expect(solution.lengthOfLongestSubstring("aabaab!bb"), 3);
    });
  });
}