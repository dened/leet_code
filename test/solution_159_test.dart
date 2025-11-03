import 'package:leet_code/src/solution_159.dart';
import 'package:test/test.dart';

void main() {
  group('Longest Substring with At Most Two Distinct Characters', () {
    final solution = Solution();

    test('Example 1: s = "eceba"', () {
      expect(solution.lengthOfLongestSubstringTwoDistinct("eceba"), 3);
    });

    test('Example 2: s = "ccaabbb"', () {
      expect(solution.lengthOfLongestSubstringTwoDistinct("ccaabbb"), 5);
    });

    test('Empty string', () {
      expect(solution.lengthOfLongestSubstringTwoDistinct(""), 0);
    });

    test('String with one character', () {
      expect(solution.lengthOfLongestSubstringTwoDistinct("a"), 1);
    });

    test('String with two characters', () {
      expect(solution.lengthOfLongestSubstringTwoDistinct("ab"), 2);
    });

    test('String with only one distinct character', () {
      expect(solution.lengthOfLongestSubstringTwoDistinct("aaaaa"), 5);
    });

    test('String with multiple distinct characters', () {
      expect(solution.lengthOfLongestSubstringTwoDistinct("abaccc"), 4);
    });
  });
}

