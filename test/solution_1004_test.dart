import 'package:leet_code/src/solution_1004.dart';
import 'package:test/test.dart';

void main() {
  group('Max Consecutive Ones III', () {
    final solution = Solution();

    test('Example 1: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2', () {
      expect(solution.longestOnes([1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0], 2), 6);
    });

    test('Example 2: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3',
        () {
      expect(
          solution.longestOnes(
              [0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3),
          10);
    });

    test('k = 0, no flips allowed', () {
      expect(solution.longestOnes([1, 1, 0, 1, 1, 1, 0, 1, 1], 0), 3);
    });

    test('k is greater than or equal to number of zeros', () {
      expect(solution.longestOnes([0, 0, 0, 1], 4), 4);
    });

    test('All ones', () {
      expect(solution.longestOnes([1, 1, 1, 1, 1], 2), 5);
    });

    test('All zeros', () {
      expect(solution.longestOnes([0, 0, 0, 0], 2), 2);
    });

    test('k equals array length', () {
      expect(solution.longestOnes([0, 1, 0, 1, 0], 5), 5);
    });

    test('Empty array', () {
      expect(solution.longestOnes([], 5), 0);
    });

    test('Longest subarray at the beginning', () {
      expect(solution.longestOnes([0, 0, 1, 1, 1, 0, 0], 2), 5);
    });

    test('Longest subarray at the end', () {
      expect(solution.longestOnes([0, 0, 1, 1, 1, 0, 0], 2), 5);
    });
  });
}
