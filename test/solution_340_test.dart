import 'package:leet_code/solution_340.dart';
import 'package:test/test.dart';

void main() {
  group('Longest Substring with At Most K Distinct Characters', () {
    final solution = Solution();

    test('Example 1: s = "eceba", k = 2', () {
      expect(solution.lengthOfLongestSubstringKDistinct("eceba", 2), 3);
    });

    test('Example 2: s = "aa", k = 1', () {
      expect(solution.lengthOfLongestSubstringKDistinct("aa", 1), 2);
    });

    test('Empty string', () {
      expect(solution.lengthOfLongestSubstringKDistinct("", 5), 0);
    });

    test('k = 0', () {
      expect(solution.lengthOfLongestSubstringKDistinct("abcde", 0), 0);
    });

    test('String with all same characters', () {
      expect(solution.lengthOfLongestSubstringKDistinct("aaaaa", 2), 5);
    });

    test('k is larger than distinct characters', () {
      expect(solution.lengthOfLongestSubstringKDistinct("abc", 5), 3);
    });

    test('Complex case 1', () {
      expect(solution.lengthOfLongestSubstringKDistinct("abaccc", 2), 4);
    });

    test('Complex case 2', () {
      expect(
          solution.lengthOfLongestSubstringKDistinct("araaci", 2), 4);
    });
  });
}