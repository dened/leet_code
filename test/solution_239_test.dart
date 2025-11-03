import 'package:leet_code/src/solution_239.dart';
import 'package:test/test.dart';

void main() {
  group('Sliding Window Maximum', () {
    final solution = Solution();

    test('Example 1: nums = [1,3,-1,-3,5,3,6,7], k = 3', () {
      expect(solution.maxSlidingWindow([1, 3, -1, -3, 5, 3, 6, 7], 3),
          [3, 3, 5, 5, 6, 7]);
    });

    test('Example 2: nums = [1], k = 1', () {
      expect(solution.maxSlidingWindow([1], 1), [1]);
    });

    test('k = 1', () {
      expect(solution.maxSlidingWindow([1, 2, 3, 4, 5], 1), [1, 2, 3, 4, 5]);
    });

    test('k equals nums.length', () {
      expect(solution.maxSlidingWindow([1, 2, 3, 4, 5], 5), [5]);
    });

    test('Decreasing sequence', () {
      expect(solution.maxSlidingWindow([5, 4, 3, 2, 1], 3), [5, 4, 3]);
    });

    test('Increasing sequence', () {
      expect(solution.maxSlidingWindow([1, 2, 3, 4, 5], 3), [3, 4, 5]);
    });

    test('All elements are the same', () {
      expect(solution.maxSlidingWindow([4, 4, 4, 4, 4], 2), [4, 4, 4, 4]);
    });

    test('Complex case with duplicates and negatives', () {
      expect(solution.maxSlidingWindow([9, 10, 9, -7, -4, -8, 2, -6], 5),
          [10, 10, 9, 2]);
    });
  });
}
