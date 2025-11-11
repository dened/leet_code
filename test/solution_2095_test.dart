import 'package:leet_code/src/solution_2095.dart';
import 'package:test/test.dart';

import 'utils/utils.dart';

void main() {
  group('Delete the Middle Node of a Linked List', () {
    final solution = Solution();

    test('Example 1: head = [1,3,4,7,1,2,6]', () {
      // n=7, middle index is 3 (value 7)
      final head = createLinkedList([1, 3, 4, 7, 1, 2, 6]);
      final result = solution.deleteMiddle(head);
      expect(linkedListToList(result), equals([1, 3, 4, 1, 2, 6]));
    });

    test('Example 2: head = [1,2,3,4]', () {
      // n=4, middle index is 2 (value 3)
      final head = createLinkedList([1, 2, 3, 4]);
      final result = solution.deleteMiddle(head);
      expect(linkedListToList(result), equals([1, 2, 4]));
    });

    test('Example 3: head = [2,1]', () {
      // n=2, middle index is 1 (value 1)
      final head = createLinkedList([2, 1]);
      final result = solution.deleteMiddle(head);
      expect(linkedListToList(result), equals([2]));
    });

    test('Single node list: head = [1]', () {
      // n=1, middle index is 0 (value 1)
      final head = createLinkedList([1]);
      final result = solution.deleteMiddle(head);
      expect(linkedListToList(result), equals([]));
    });

    test('List with 3 nodes: head = [1,2,3]', () {
      final head = createLinkedList([1, 2, 3]);
      final result = solution.deleteMiddle(head);
      expect(linkedListToList(result), equals([1, 3]));
    });
  });
}