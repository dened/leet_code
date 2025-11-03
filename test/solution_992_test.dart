import 'package:leet_code/src/solution_992.dart';
import 'package:test/test.dart';

void main() {
  group('Subarrays with K Different Integers', () {
    final solution = Solution();

    test('Example 1: nums = [1,2,1,2,3], k = 2', () {
      expect(solution.subarraysWithKDistinct([1, 2, 1, 2, 3], 2), 7);
    });

    test('Example 2: nums = [1,2,1,3,4], k = 3', () {
      expect(solution.subarraysWithKDistinct([1, 2, 1, 3, 4], 3), 3);
    });

    test('k = 1, all same elements', () {
      expect(solution.subarraysWithKDistinct([1, 1, 1, 1, 1], 1), 15);
    });

    test('k = 1, different elements', () {
      expect(solution.subarraysWithKDistinct([1, 2, 3], 1), 3);
    });

    test('k is larger than number of distinct elements', () {
      expect(solution.subarraysWithKDistinct([1, 2, 3], 4), 0);
    });

    test('All elements are distinct, k = 3', () {
      expect(solution.subarraysWithKDistinct([1, 2, 3, 4, 5], 3), 3);
    });

    test('Complex case', () {
      expect(solution.subarraysWithKDistinct([2, 1, 2, 1, 2], 2), 10);
    });
  });
}