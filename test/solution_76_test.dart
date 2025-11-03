import 'package:leet_code/src/solution_76.dart';
import 'package:test/test.dart';

void main() {
  group('Minimum Window Substring', () {
    final solution = Solution();

    test('Example 1: s = "ADOBECODEBANC", t = "ABC"', () {
      expect(solution.minWindow("ADOBECODEBANC", "ABC"), "BANC");
    });

    test('Example 2: s = "a", t = "a"', () {
      expect(solution.minWindow("a", "a"), "a");
    });

    test('Example 3: s = "a", t = "aa"', () {
      expect(solution.minWindow("a", "aa"), "");
    });

    test('No window found', () {
      expect(solution.minWindow("ADOBECODEBANC", "XYZ"), "");
    });

    test('t is longer than s', () {
      expect(solution.minWindow("a", "ab"), "");
    });

    test('t has duplicate characters', () {
      expect(solution.minWindow("ADOBECODEBANC", "AABC"), "ADOBECODEBA");
    });

    test('Window is at the beginning', () {
      expect(solution.minWindow("BANCADOBECODE", "ABC"), "BANC");
    });

    test('Complex case', () {
      expect(solution.minWindow("cabwefgewcwaefgcf", "cae"), "cwae");
    });
  });
}

