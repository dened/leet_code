import 'package:leet_code/src/solution_206.dart';
import 'package:test/test.dart';

import 'utils/utils.dart';

void main() {
  group('Reverse Linked List', () {
    final solution = Solution();

    test('Example 1: head = [1,2,3,4,5]', () {
      final head = createLinkedList([1, 2, 3, 4, 5]);
      final reversedHead = solution.reverseList(head);
      expect(linkedListToList(reversedHead), [5, 4, 3, 2, 1]);
    });

    test('Example 2: head = [1,2]', () {
      final head = createLinkedList([1, 2]);
      final reversedHead = solution.reverseList(head);
      expect(linkedListToList(reversedHead), [2, 1]);
    });

    test('Example 3: head = []', () {
      final head = createLinkedList([]);
      final reversedHead = solution.reverseList(head);
      expect(linkedListToList(reversedHead), []);
    });

    test('Single element list: head = [1]', () {
      final head = createLinkedList([1]);
      final reversedHead = solution.reverseList(head);
      expect(linkedListToList(reversedHead), [1]);
    });
  });
}