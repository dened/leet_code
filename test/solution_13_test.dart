import 'package:leet_code/src/solution_13.dart';
import 'package:test/test.dart';

void main() {
  group('Roman to Integer', () {
    final solution = Solution();

    test('Example 1: s = "III"', () {
      expect(solution.romanToInt("III"), 3);
    });

    test('Example 2: s = "LVIII"', () {
      expect(solution.romanToInt("LVIII"), 58);
    });

    test('Example 3: s = "MCMXCIV"', () {
      expect(solution.romanToInt("MCMXCIV"), 1994);
    });

    test('Subtraction case: IV', () {
      expect(solution.romanToInt("IV"), 4);
    });

    test('Subtraction case: IX', () {
      expect(solution.romanToInt("IX"), 9);
    });

    test('Subtraction case: XL', () {
      expect(solution.romanToInt("XL"), 40);
    });

    test('Subtraction case: XC', () {
      expect(solution.romanToInt("XC"), 90);
    });

    test('Subtraction case: CD', () {
      expect(solution.romanToInt("CD"), 400);
    });

    test('Subtraction case: CM', () {
      expect(solution.romanToInt("CM"), 900);
    });

    test('Max value: MMMCMXCIX', () {
      expect(solution.romanToInt("MMMCMXCIX"), 3999);
    });
  });
}
