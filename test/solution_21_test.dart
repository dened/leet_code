import 'package:leet_code/src/solution_21.dart';
import 'package:test/test.dart';

import 'utils/utils.dart';

void main() {
  group('Merge Two Sorted Lists', () {
    final solution = Solution();

    test('Example 1: list1 = [1,2,4], list2 = [1,3,4]', () {
      final list1 = createLinkedList([1, 2, 4]);
      final list2 = createLinkedList([1, 3, 4]);
      final result = solution.mergeTwoLists(list1, list2);
      expect(linkedListToList(result), equals([1, 1, 2, 3, 4, 4]));
    });

    test('Example 2: list1 = [], list2 = []', () {
      final list1 = createLinkedList([]);
      final list2 = createLinkedList([]);
      final result = solution.mergeTwoLists(list1, list2);
      expect(linkedListToList(result), equals([]));
    });

    test('Example 3: list1 = [], list2 = [0]', () {
      final list1 = createLinkedList([]);
      final list2 = createLinkedList([0]);
      final result = solution.mergeTwoLists(list1, list2);
      expect(linkedListToList(result), equals([0]));
    });

    test('One list is empty: list1 = [0], list2 = []', () {
      final list1 = createLinkedList([0]);
      final list2 = createLinkedList([]);
      final result = solution.mergeTwoLists(list1, list2);
      expect(linkedListToList(result), equals([0]));
    });

    test('Lists with different lengths', () {
      final list1 = createLinkedList([1, 5, 10, 15]);
      final list2 = createLinkedList([2, 3, 12]);
      final result = solution.mergeTwoLists(list1, list2);
      expect(linkedListToList(result), equals([1, 2, 3, 5, 10, 12, 15]));
    });

    test('One list ends before the other', () {
      final list1 = createLinkedList([1, 2, 3]);
      final list2 = createLinkedList([4, 5, 6]);
      final result = solution.mergeTwoLists(list1, list2);
      expect(linkedListToList(result), equals([1, 2, 3, 4, 5, 6]));
    });
  });
}