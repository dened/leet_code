import 'package:leet_code/src/solution_20.dart';
import 'package:test/test.dart';

void main() {
  group('Min Stack', () {
    test('Example 1 from description', () {
      final minStack = MinStack();
      minStack.push(-2);
      minStack.push(0);
      minStack.push(-3);
      expect(minStack.getMin(), -3, reason: 'After pushing -3, getMin should be -3');
      minStack.pop();
      expect(minStack.top(), 0, reason: 'After popping, top should be 0');
      expect(minStack.getMin(), -2, reason: 'After popping, getMin should be -2');
    });

    test('Handles duplicate minimum values', () {
      final minStack = MinStack();
      minStack.push(0);
      minStack.push(1);
      minStack.push(0);
      expect(minStack.getMin(), 0, reason: 'Min should be 0');
      minStack.pop(); // Removes the second 0
      expect(minStack.getMin(), 0, reason: 'After popping a duplicate min, min should still be 0');
    });

    test('Handles popping non-minimum values', () {
      final minStack = MinStack();
      minStack.push(5);
      minStack.push(2);
      minStack.push(10);
      expect(minStack.getMin(), 2);
      minStack.pop(); // Removes 10
      expect(minStack.top(), 2);
      expect(minStack.getMin(), 2, reason: 'Min should not change when a larger value is popped');
    });

    test('Handles a sequence of pushes and pops', () {
      final minStack = MinStack();
      minStack.push(2);
      minStack.push(0);
      minStack.push(3);
      minStack.push(0);
      expect(minStack.getMin(), 0);
      minStack.pop(); // pop 0
      expect(minStack.getMin(), 0);
      minStack.pop(); // pop 3
      expect(minStack.getMin(), 0);
      minStack.pop(); // pop 0
      expect(minStack.getMin(), 2);
    });
  });
}