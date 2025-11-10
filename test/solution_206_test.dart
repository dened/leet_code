import 'package:leet_code/src/solution_206.dart';
import 'package:test/test.dart';

// Helper function to create a linked list from a list of integers
ListNode? createLinkedList(List<int> values) {
  if (values.isEmpty) {
    return null;
  }
  ListNode head = ListNode(values[0]);
  ListNode current = head;
  for (int i = 1; i < values.length; i++) {
    current.next = ListNode(values[i]);
    current = current.next!;
  }
  return head;
}

// Helper function to convert a linked list back to a list of integers
List<int> linkedListToList(ListNode? head) {
  final list = <int>[];
  ListNode? current = head;
  while (current != null) {
    list.add(current.val);
    current = current.next;
  }
  return list;
}

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