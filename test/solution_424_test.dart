import 'package:leet_code/src/solution_424.dart';
import 'package:test/test.dart';

void main() {
  group('Longest Repeating Character Replacement', () {
    final solution = Solution();

    test('Example 1: s = "ABAB", k = 2', () {
      expect(solution.characterReplacement("ABAB", 2), 4);
    });

    test('Example 2: s = "AABABBA", k = 1', () {
      expect(solution.characterReplacement("AABABBA", 1), 4);
    });

    test('k = 0, no replacements allowed', () {
      expect(solution.characterReplacement("AAABBC", 0), 3);
    });

    test('k is large enough to change the whole string', () {
      expect(solution.characterReplacement("ABCDE", 4), 5);
    });

    test('All characters are the same', () {
      expect(solution.characterReplacement("AAAAA", 2), 5);
    });

    test('Single character string', () {
      expect(solution.characterReplacement("A", 1), 1);
    });

    test('Longest substring is in the middle', () {
      expect(solution.characterReplacement("ABBBCCDE", 1), 4);
    });

    test('Complex case where window must shrink', () {
      expect(solution.characterReplacement("ABAA", 0), 2);
      expect(solution.characterReplacement("ABCDEFG", 3), 4);
    });
  });
}