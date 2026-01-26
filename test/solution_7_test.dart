import 'package:leet_code/src/solution_7.dart';
import 'package:test/test.dart';

void main() {
  group('7. Reverse Integer', () {
    final solution = Solution();

    test('Example 1: x = 123', () {
      expect(solution.reverse(123), 321);
    });

    test('Example 2: x = -123', () {
      expect(solution.reverse(-123), -321);
    });

    test('Example 3: x = 120', () {
      expect(solution.reverse(120), 21);
    });

    test('Input is zero', () {
      expect(solution.reverse(0), 0);
    });

    test('Single digit positive number', () {
      expect(solution.reverse(9), 9);
    });

    test('Single digit negative number', () {
      expect(solution.reverse(-9), -9);
    });

    test('Positive number that overflows when reversed', () {
      // Reverses to 9646324351, which is > 2^31 - 1
      expect(solution.reverse(1534236469), 0);
    });

    test('Negative number that overflows when reversed', () {
      // Reverses to -9646324351, which is < -2^31
      expect(solution.reverse(-1534236469), 0);
    });

    test('Max 32-bit integer (overflows on reverse)', () {
      // 2147483647 reverses to 7463847412
      expect(solution.reverse(2147483647), 0);
    });

    test('Min 32-bit integer (overflows on reverse)', () {
      // -2147483648 reverses to -8463847412
      expect(solution.reverse(-2147483648), 0);
    });

    test('Large positive number that does not overflow', () {
      expect(solution.reverse(1463847412), 2147483641);
    });

    test('Large negative number that does not overflow', () {
      expect(solution.reverse(-2147483641), -1463847412);
    });
  });
}
