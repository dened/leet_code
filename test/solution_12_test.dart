import 'package:leet_code/solution_12.dart';
import 'package:test/test.dart';

void main() {
  group('Integer to Roman', () {
    final solution = Solution();

    test('Example 1: num = 3749', () {
      expect(solution.intToRoman(3749), "MMMDCCXLIX");
    });

    test('Example 2: num = 58', () {
      expect(solution.intToRoman(58), "LVIII");
    });

    test('Example 3: num = 1994', () {
      expect(solution.intToRoman(1994), "MCMXCIV");
    });

    test('Simple case: num = 3', () {
      expect(solution.intToRoman(3), "III");
    });

    test('Subtraction case: num = 4', () {
      expect(solution.intToRoman(4), "IV");
    });

    test('Max value: num = 3999', () {
      expect(solution.intToRoman(3999), "MMMCMXCIX");
    });
  });
}
