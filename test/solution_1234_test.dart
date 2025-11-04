import 'package:leet_code/src/solution_1234.dart';
import 'package:test/test.dart';

void main() {
  group('Replace the Substring for Balanced String', () {
    final solution = Solution();

    test('Example 1: s = "QWER"', () {
      // Строка уже сбалансирована.
      expect(solution.balancedString("QWER"), 0);
    });

    test('Example 2: s = "QQWE"', () {
      // Нужно заменить одну 'Q' на 'R'. Минимальная длина подстроки - 1.
      expect(solution.balancedString("QQWE"), 1);
    });

    test('Example 3: s = "QQQW"', () {
      // Нужно заменить "QQ" на "ER". Минимальная длина подстроки - 2.
      expect(solution.balancedString("QQQW"), 2);
    });

    test('All characters are the same: s = "QQQQ"', () {
      // Нужно заменить "QQQ" на "WER". Минимальная длина подстроки - 3.
      expect(solution.balancedString("QQQQ"), 3);
    });

    test('Longer string with excess characters in the middle: s = "WQWRQQQW"', () {
      // n=8, n/4=2. Counts: W=3, Q=4, R=1.
      // Лишние: 1 'W', 2 'Q'.
      // Нужно найти минимальное окно, содержащее 1 'W' и 2 'Q'.
      // Окно "WRQQQ" (индексы 1-5) содержит 'W', 'R', 'Q', 'Q', 'Q'.
      // Вне окна: "W...QW". Counts: W=2, Q=1. Все <= 2.
      // Окно "RQQQ" (индексы 2-5) содержит 'R', 'Q', 'Q', 'Q'.
      // Вне окна: "WQ...QW". Counts: W=2, Q=2. Все <= 2. Длина 4.
      // Окно "QQQ" (индексы 3-5) содержит 'Q','Q','Q'.
      // Вне окна: "WQWR...W". Counts: W=3, Q=1, R=1. W > 2. Не подходит.
      // Окно "QWRQ" (индексы 0-3) содержит 'Q','W','R','Q'.
      // Вне окна: "...QQQW". Counts: Q=3, W=1. Q > 2. Не подходит.
      // Минимальное окно "RQQ" не работает. "WRQQ" тоже.
      // Правильное окно - "QQQW" с конца. Вне него "WQWR". W=2, Q=1, R=1. Все <=2. Длина 4.
      // Окно "WRQQ" с 1 до 4. Вне него "W...QW". W=2, Q=2. Все <=2. Длина 4.
      // Окно "RQQQ" с 2 до 5. Вне него "WQ...W". W=2, Q=1. Все <=2. Длина 4.
      // Окно "QQQ" не работает.
      // Окно "QQW" с 4 до 6. Вне него "WQWRQ". W=2, Q=2, R=1. Все <=2. Длина 3.
      expect(solution.balancedString("WQWRQQQW"), 3);
    });

  });
}
