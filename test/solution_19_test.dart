import 'package:leet_code/src/solution_19.dart';
import 'package:test/test.dart';

import 'utils/utils.dart';


void main() {
  group('Remove Nth Node From End of List', () {
    final solution = Solution();

    test('Example 1: head = [1,2,3,4,5], n = 2', () {
      final head = createLinkedList([1, 2, 3, 4, 5]);
      final result = solution.removeNthFromEnd(head, 2);
      expect(linkedListToList(result), equals([1, 2, 3, 5]));
    });

    test('Example 2: head = [1], n = 1', () {
      final head = createLinkedList([1]);
      final result = solution.removeNthFromEnd(head, 1);
      expect(linkedListToList(result), equals([]));
    });

    test('Example 3: head = [1,2], n = 1', () {
      final head = createLinkedList([1, 2]);
      final result = solution.removeNthFromEnd(head, 1);
      expect(linkedListToList(result), equals([1]));
    });

    test('Remove the head of the list: head = [1,2], n = 2', () {
      final head = createLinkedList([1, 2]);
      final result = solution.removeNthFromEnd(head, 2);
      expect(linkedListToList(result), equals([2]));
    });

    test('Remove the head of a longer list: head = [1,2,3,4,5], n = 5', () {
      final head = createLinkedList([1, 2, 3, 4, 5]);
      final result = solution.removeNthFromEnd(head, 5);
      expect(linkedListToList(result), equals([2, 3, 4, 5]));
    });
  });
}