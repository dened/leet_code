
import 'package:leet_code/src/structure/list_node.dart';

/// Helper function to create a ListNode from a List<int>.
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

/// Helper function to convert a ListNode to a List<int>.
List<int> linkedListToList(ListNode? head) {
  List<int> result = [];
  ListNode? current = head;
  while (current != null) {
    result.add(current.val);
    current = current.next;
  }
  return result;
}