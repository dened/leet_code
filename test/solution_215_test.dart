import 'package:leet_code/src/solution_215.dart';
import 'package:test/test.dart';

void main() {
  group('215. Kth Largest Element in an Array', () {
    final solution = Solution();

    test('Example 1: nums = [3,2,1,5,6,4], k = 2', () {
      expect(solution.findKthLargest([3, 2, 1, 5, 6, 4], 2), 5);
    });

    test('Example 2: nums = [3,2,3,1,2,4,5,5,6], k = 4', () {
      expect(solution.findKthLargest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4), 4);
    });

    test('k is 1 (the largest element)', () {
      expect(solution.findKthLargest([3, 2, 1, 5, 6, 4], 1), 6);
    });

    test('k is equal to array length (the smallest element)', () {
      expect(solution.findKthLargest([3, 2, 1, 5, 6, 4], 6), 1);
    });

    test('Array with negative numbers', () {
      expect(solution.findKthLargest([-1, -5, 2, 0], 2), 0);
    });

    test('Array with all same elements', () {
      expect(solution.findKthLargest([7, 7, 7, 7], 3), 7);
    });

    test('Single element array', () {
      expect(solution.findKthLargest([1], 1), 1);
    });

    test('Longer array with duplicates', () {
      final nums = [99, 99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      expect(solution.findKthLargest(nums, 2), 99);
    });
  });
}
